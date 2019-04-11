//draw healthbar

if instance_exists(obj_player) {
	
	var pc = (obj_player.hp / 3) * 100;
	draw_healthbar(x - 15, y - 30, x + 15, y - 27, pc, c_black, c_red, c_aqua, 0, false, false);
	
}
