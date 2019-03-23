scr_collisions();

image_index = 0;
sprite_index = spr_player;

// switch to move state with input
if (move != 0) {
	var len = walk_spd * move
	if (abs(phy_speed_x) < abs(len)) {
		phy_speed_x += len / accel
	} else  {
		phy_speed_x = len;
	}
	state = scr_move_state;
}

//jump check
if (jumpPressed) and (onGround) {
	state = scr_jump_state;
}

//check for no ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	state = scr_jump_state;
}