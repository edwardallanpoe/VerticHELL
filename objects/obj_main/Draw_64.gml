//draw gui

if (instance_exists(obj_seeker)) {
	draw_text(x, y, "seeker state: " + string(obj_seeker.state));
	draw_text(x, y + 20, "seeker state timer: " + string(obj_seeker.alarm[0]));
	draw_text(x, y + 40, "seeker chosen direction: " + string(global.pickDir));
	draw_text(x, y + 60, "seeker speed: " + string(obj_seeker.phy_speed_x));
} else {
	
}