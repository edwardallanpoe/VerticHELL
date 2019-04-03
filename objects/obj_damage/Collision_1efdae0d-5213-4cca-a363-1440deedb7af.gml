//damamge the object
if (other.id != creator) {
	other.hp -= damage;
	show_debug_message(string(other.id) + "health left: " + string(other.hp));
	
	var dir = point_direction(creator.x, creator.y, other.x, other.y);
	var xforce = lengthdir_x(knockback, dir);
	
	with (other) {
		physics_apply_impulse(x, y, xforce, 0);
	
	}
}
