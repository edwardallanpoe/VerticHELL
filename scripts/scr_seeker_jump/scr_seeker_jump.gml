//midair
var move = seekerRight - seekerLeft;

// Gravity for this script is set in the room's config panel

// Get length of movement
// Note that if "move" positive, "len"  will be positive, and similarly with negative.
// Also, if we're *not* moving, "move" will be 0, making "len" 0 also. 
if (!seekerWalk) {
	len = long_jump_dist * move;
} else {
	len = jump_dist * move;
}

// Applying movement forces in air
if (abs(phy_speed_x) < abs(len)) {
	phy_speed_x += len / accel
} else  {
	phy_speed_x = len;
}

if ((seekerJumpPressed) and (doubleJump) and (phy_speed_y > 0)) {
	physics_apply_impulse(x, y, 0, jump*1.5);
	//doubleJump = false;
} else if ((seekerJumpPressed) and (doubleJump) and (phy_speed_y < 0)) {
	physics_apply_impulse(x, y, 0, jump*0.75);
	//doubleJump = false;
}

// Sprite animation

	
if (phy_speed_y < 0) {

	//sprite_index = spr_player_jump;
	//image_index = 2;
	//image_speed = 0;
	
	// approach "top speed" (I knpw thats not what apogee is, but you get the point) by
	// a factor of -0.25 per step.
	phy_speed_y = approach(phy_speed_y, apogee, -0.25);
	
	if (phy_speed_y == apogee) {
		image_index = 3;
	}
} else if (phy_speed_y > 0) { 
	//sprite_index = spr_player_fall;
	//image_speed = 1;
	
	// approach terminal velocity by a factor of 1.1.
	phy_speed_y = approach(phy_speed_y, terminal_vel, 1.1);
}

// Checking for collision below player
if (physics_test_overlap(x, y + 1, 0, obj_wall)) {
	if (phy_speed_x == 0) {
		state = scr_seeker_stand;
	}
	
	if (phy_speed_x != 0) {
		state = scr_seeker_move;
	}

} 

	