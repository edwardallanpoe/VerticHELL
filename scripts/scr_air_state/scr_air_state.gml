if (state_new) {
	image_speed = 0;
	image_index = 0;
	state_var[0] = false;
	state_var[1] = false;
	
	if ((air_control_active) and (jumpHeld) and (phy_speed_y < 0)) {
		
		if (abs(phy_speed_x) < run_max) {
			state_var[1] = true;
		}
		
		state_var[0] = true;
		
	}
}

if ((jumpHeld) and (state_var[0]) and (state_timer < jump_hold_limit)) {
	
	phy_speed_y = phy_speed_y;
	
}

if (jumpReleased) {
	
	state_var[0] = false;
	
}


physics_world_gravity(0, 10);

if (place_meeting(x, y + phy_speed_y, obj_wall)) {
	
	while (!place_meeting(x, y + phy_speed_y, obj_wall)) {
		
		phy_position_y += sign(phy_speed_y);
		
	}
	
	phy_speed_y = 0;
	
}

if ((air_control_active) and (rightKey || leftKey)) {
	
	if ((rightKey - leftKey) != 0) {
		image_xscale = (rightKey - leftKey);
	}
	
	if (!runKey) {
		phy_speed_x = lerp(phy_speed_x, run_spd*(rightKey - leftKey), walk_accel);
	} else {
		phy_speed_x = lerp(phy_speed_x, walk_spd*(rightKey - leftKey), walk_accel);
	}
	
}

if (!state_var[1]) {

	if (phy_speed_y > 0) {
		sprite_index = spr_player_jump;
		image_speed = 0;
		image_index = 1;
	} else {
		sprite_index = spr_player_jump;
		image_speed = 0;
		image_index = 0;
	}

} else {
	sprite_index = spr_player_jump;
	image_speed = 0;
	image_index = 0;
}

if (place_meeting(x + phy_speed_x, y, obj_wall)) {
	
	while (!place_meeting(x + phy_speed_x, y, obj_wall)) {
		
		phy_position_x += sign(phy_speed_x);
		
	}
	
	phy_speed_x = 0;
	
}

if (place_meeting(x, y + 1, obj_wall)) {
	
	if (phy_speed_x == 0) {
		state_switch("Idle");
	} else {
		state_switch("Walk");
	}
	
}
	