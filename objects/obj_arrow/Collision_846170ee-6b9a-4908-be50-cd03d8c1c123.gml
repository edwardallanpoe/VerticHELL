//damage the entity

with (other) {
	hp -= 1;
	
	var dir = point_direction(x, y, obj_arrow.x, obj_arrow.y);
	var xforce = lengthdir_x(obj_arrow.knockback, dir);
	
	stunDelay = stunDelayMax;
	physics_apply_impulse(x, y, xforce, 0);
	state = scr_seeker_ai_injured;
}

instance_destroy();