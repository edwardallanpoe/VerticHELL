//damage player

with (other) {
	
		
	if (invincible == false) {
		hp -= 1;
			
		var dir = point_direction(x, y, obj_player.x, obj_player.y);
		var xforce = lengthdir_x(-50, dir);
	
		stunDelay = stunDelayMax;
		physics_apply_impulse(x, y, xforce, 0);
		state = scr_player_injured;
	} else if (invincible == true) {
			
	}
	
	if physics_test_overlap(x, y, 0, obj_wall) {
		
		if (state == scr_dive_state) {
			state = scr_move_state;
		}
	}

	
}