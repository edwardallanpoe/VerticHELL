scr_collisions();
//scr_debugging();

sprite_index = spr_player_run;

// Control animation speed based on player speed
//   Note that abs() gives us the absolute value. This way,
//   the image speed is never negative, even if we're running left. s
image_speed = abs(phy_speed_x) / 4;

// Get length of movement
// "len" will be 0 if move is 0, negative if it's negative, etc
if (!runKey) {
	len = walk_spd * move;
} else {
	len = run_spd * move;
}

// Move player. 
//   From a stopped position, it will take 'accel' frames to get up to speed,
//   then we'll maintain a steady speed.
//
//	 This could also be done with impulses, but acceleration is harder to control.
if (abs(phy_speed_x) < abs(len)) {
	phy_speed_x += len / accel
} else  {
	phy_speed_x = len;
}

//jump check
if (jumpPressed) and (onGround) {
	physics_apply_force(x, y, 0, jump * 5);
	onGround = false;
	doubleJump = true;
	state = scr_jump_state;
}

//dash check
if (dashKey) and (dashBuffer) {
	dashBuffer = false;
	state = scr_dash_state;
	alarm[0] = room_speed/12;
	alarm[1] = room_speed/2;
}


//check for standing on the ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	
	state = scr_jump_state;

}

///flip sprite and switch to stand if there is no x speed
if (phy_speed_x != 0) {
	image_xscale = sign(phy_speed_x);
} else if (phy_speed_x == 0) {
	state = scr_stand_state;
}