scr_collisions();
//scr_debugging();


// Control animation speed based on player speed
//   Note that abs() gives us the absolute value. This way,
//   the image speed is never negative, even if we're running left. s


var move = seekerRight - seekerLeft;

// used to tell the game which direction we are facing.
dir = point_direction(0, 0, move, 0);

// Get length of movement
// "len" will be 0 if move is 0, negative if it's negative, etc
if (!seekerWalk) {
	len = run_spd * move;
	sprite_index = spr_en_seeker_run;
	image_speed = abs(phy_speed_x) /3;
} else {
	len = walk_spd * move;
	sprite_index = spr_seeker_walk;
	image_speed = 1;
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
if (seekerJumpPressed) and (onGround) {
	physics_apply_impulse(x, y, 0, jump);
	onGround = false;

	state = scr_seeker_jump;
}

//check for standing on the ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	
	state = scr_seeker_jump;

}

///flip sprite and switch to stand if there is no x speed
if (phy_speed_x != 0) {
	if (seekerWalk) {
		sprite_index = spr_seeker_walk;
		image_speed = 1;
	}
	
	image_xscale = -sign(phy_speed_x);
} else if (phy_speed_x == 0) {
	state = scr_seeker_stand;
}