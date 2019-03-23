scr_get_input();
scr_collisions();

image_index = 0;
sprite_index = spr_player;

// switch to move state with input
if (rightKey || leftKey) {
	if ((rightKey - leftKey) != 0) {
		state = scr_move_state;
	}
}

//jump check
if (jumpPressed) and (onGround) {
	state = scr_jump_state;
}

//check for no ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	state = scr_jump_state;
}