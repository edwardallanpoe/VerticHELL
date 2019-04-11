//draw gui

var pc = (hp / 3) * 100;
draw_healthbar(x - 10, y - 30, x + 10, y - 25, pc, c_black, c_red, c_blue, 0, false, false);

draw_self();
//draw_text(obj_seeker.x, obj_seeker.y - 40, "HEALTH: " + string(obj_seeker.hp));