//damamge the object
if (other.id != creator) {
	other.hp -= damage;
	show_debug_message(string(other.id) + "health left: " + string(other.hp));
	
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xforce = lengthdir_x(knockback, dir);
	
	
	with (obj_seeker) {
		stunDelay = stunDelayMax;
		
		physics_apply_impulse(x, y, xforce, 0);
		obj_seeker.state = scr_seeker_ai_injured;
	
	}
}
