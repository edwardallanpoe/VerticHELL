scr_get_input();
scr_collisions();
//scr_debugging();

sprite_index = spr_player_run;

//control animation speed based on player speed
if (phy_speed_x > 0) {
	image_speed = phy_speed_x / 4;
} else if (phy_speed_x < 0) {
	image_speed = -phy_speed_x / 4;
}
	
var move = rightKey - leftKey;

dir = point_direction(0, 0, move, 0);

//get length of movement
if (move == 0) {
	len = 0;
} else if (move != 0) {
	
	if (!runKey) {
		len = walk_spd;
	} else {
		len = run_spd;
	}
}

//move player
if (!runKey) {
	
	if (move > 0) {
		physics_apply_impulse(x, y, 4, 0);
		physics_apply_force(x, y, len, 0);
	} else if (move < 0) {
		physics_apply_impulse(x, y, -4, 0);
		physics_apply_force(x, y, -len, 0);
	}
} else {
		
	if (move > 0) {
		physics_apply_impulse(x, y, 5.5, 0);
		physics_apply_force(x, y, len, 0);
	} else if (move < 0) {
		physics_apply_impulse(x, y, -5.5, 0);
		physics_apply_force(x, y, -len, 0);
	}
}

//jump check
if (jumpPressed) and (onGround) {
	physics_apply_force(x, y, 0, jump * 5);
	onGround = false;
	doubleJump = true;
	state = scr_jump_state;
}

//dash checlk
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