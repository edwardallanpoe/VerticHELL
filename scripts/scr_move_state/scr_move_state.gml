scr_collisions();
//scr_debugging();


// Control animation speed based on player speed
//   Note that abs() gives us the absolute value. This way,
//   the image speed is never negative, even if we're running left. s


var move = rightKey - leftKey;

// used to tell the game which direction we are facing.
dir = point_direction(0, 0, move, 0);

// Get length of movement
// "len" will be 0 if move is 0, negative if it's negative, etc
if (!walkKey) {
	len = run_spd * move;
	sprite_index = spr_player_run;
	image_speed = abs(phy_speed_x) /2;
} else {
	len = walk_spd * move;
	sprite_index = spr_player_walk;
	image_speed = 1;
}

wallJumpDelay = max(wallJumpDelay-1, 0)
if (wallJumpDelay == 0) {
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
}



if (swingKey) {
	if (physics_test_overlap(mouse_x, mouse_y, 0, obj_wall)) {
		set_rope_swing();
		state = scr_swing_state;
	}
}

//jump check
if (jumpPressed) and (onGround) {
	physics_apply_impulse(x, y, 0, jump);
	onGround = false;
	doubleJump = true;

	state = scr_jump_state;
}

if (punchKey) {
	state = scr_attack_state;
}

//dash check
if (dashKey) and (dashBuffer) {
	dashBuffer = false;
	state = scr_dash_state;
	alarm[0] = room_speed/12;
	alarm[1] = room_speed/2;
}

//slide check
if (slideKey) and (slideBuffer) {
	slideBuffer = false; 
	phy_speed_x = len*2.5;
	state = scr_slide_state;
	alarm[1] = room_speed*1.1;
}

//check for standing on the ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	
	state = scr_jump_state;

}

///flip sprite and switch to stand if there is no x speed
if (phy_speed_x != 0) {
	//if (walkKey) {
	//	sprite_index = spr_player_walk;
	//	image_speed = 1;
	//}
	
	image_xscale = sign(phy_speed_x);
} else if (phy_speed_x == 0) {
	state = scr_stand_state;
}