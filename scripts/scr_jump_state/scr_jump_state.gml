//midair

// Gravity for this script is set in the room's config panel

// Get length of movement
// Note that if "move" positive, "len"  will be positive, and similarly with negative.
// Also, if we're *not* moving, "move" will be 0, making "len" 0 also. 
if (!runKey) {
	len = jump_dist * move;
} else {
	len = long_jump_dist * move;
}

// Applying movement forces in air
if (abs(phy_speed_x) < abs(len)) {
	phy_speed_x += len / accel
} else  {
	phy_speed_x = len;
}

// Dash check
if (dashKey) and (dashBuffer) {
	dashBuffer = false;
	state = scr_dash_state;
	alarm[0] = room_speed/12;
	alarm[1] = room_speed/2;
}

// Sprite animation
sprite_index = spr_player_jump;
image_speed = 0;
	
if (phy_speed_y > 0) {
	image_index = 1;
	phy_speed_y = lerp(0, phy_speed_y, 1.1);
} else if (phy_speed_y < 0) { 
	image_index = 0;
}

// Checking for collision below player
if (physics_test_overlap(x, y + 1, 0, obj_wall)) {
	onGround = true;
	if (phy_speed_x == 0) {
		state = scr_stand_state;
	} else {
		state = scr_move_state;
	}

} 

	