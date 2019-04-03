//draw rope for swinging

if (state == scr_swing_state) {
	draw_line_width(grappleX, grappleY, ropeX, ropeY - 10, 1);
}
draw_self();