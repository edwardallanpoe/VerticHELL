//collides

with (obj_player) {
	
	
	

	if (place_meeting(x, y + 1, obj_wall)) {
		if (state == scr_swing_state) {
			state = scr_move_state;
		}
	}
	
	
	if (place_meeting(x + 1, y, obj_wall)) {
		onWall = 1;
		onGround = false;
		
		state = scr_move_state;
		
		if (jumpPressed) {
			wallJumpDelay = wallJumpDelayMax;
	
			var hJump = -onWall * h_wallJump;
	
			physics_apply_impulse(x, y, hJump, 0);
			phy_speed_x = clamp(phy_speed_x, 0, wallJumpSpd_max);
			state = scr_jump_state;
		}
	} else if (place_meeting(x - 1, y, obj_wall)) {
		onWall = -1;
		onGround = false;
		
		state = scr_move_state;
		
		if (jumpPressed) {
			wallJumpDelay = wallJumpDelayMax;
	
			var hJump = -onWall * h_wallJump;
	
			physics_apply_impulse(x, y, hJump, 0);
			phy_speed_x = clamp(phy_speed_x, 0, -wallJumpSpd_max);
			state = scr_jump_state;
		}
	} else {
		onWall = 0;
	}
}