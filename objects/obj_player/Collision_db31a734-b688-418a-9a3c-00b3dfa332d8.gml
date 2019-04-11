//collides for slide launch

event_inherited();

if (state == scr_slide_state || scr_dive_state) {
	
	with (obj_seeker) {
		
		if (obj_player.state == scr_dive_state) {
			hp -= 1;
		}
		
		if (obj_player.state == scr_slide_state) {
			var dir = point_direction(x, y, obj_player.x, obj_player.y);
			var xforce = lengthdir_x(-50, dir);
		
			stunDelay = stunDelayMax;
			physics_apply_impulse(x, y, xforce, -125);
			state = scr_seeker_ai_injured;
		}
	}
	
}