if (state_new) {
	
	sprite_index = spr_player_run;
	image_speed = 0;
	phy_speed_x = 0;
	phy_speed_y = 0;
}

if (rightKey || leftKey) {
	
	var _accel;
	
	if (runKey) {
		_accel = run_accel;
	} else {
		_accel = walk_accel;
	}
	
	if (!runKey) {
		phy_speed_x = lerp(phy_speed_x, run_spd*(rightKey - leftKey), _accel);
	} else {
		phy_speed_x = lerp(phy_speed_x, walk_spd*(rightKey - leftKey), _accel);
	}
	
} else {
	phy_speed_x = lerp(phy_speed_x, 0, walk_accel);
}

if (phy_speed_x == 0) {
	state_switch("Idle");
} else {
	
	if (phy_speed_x > 0) {
		image_xscale = 1
	} else if (phy_speed_x < 0) {
		image_xscale = -1;
	}
	
}

if (place_meeting(x + phy_speed_x, y, obj_wall)) {
	
	while (!place_meeting(x + phy_speed_x, y, obj_wall)) {
		
		phy_position_x += sign(phy_speed_x);
		
	}
	
	phy_speed_x = 0;
	
}

if (jumpPressed) {
	
	physics_apply_impulse(x, y, 0, jump * 5);
	state_switch("Air");
	
}

if (!place_meeting(x, y + 1, obj_wall)) {
	
	state_switch("Air");
	
}
	
	
	
	
	
	
	
	
	
	
	