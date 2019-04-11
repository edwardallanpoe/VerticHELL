//draw healthbar

var pc = (hp / 3) * 100;
draw_healthbar(x - 10, y - 30, x + 10, y - 25, pc, c_black, c_red, c_blue, 0, false, false);

draw_self();