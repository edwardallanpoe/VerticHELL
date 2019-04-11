//turn on wall jump

wallJumpDelay = wallJumpDelayMax;
	
var hJump = -onWall * h_wallJump;
	
physics_apply_impulse(x, y, hJump, 0);
phy_speed_x = clamp(phy_speed_x, 0, wallJumpSpd_max);
state = scr_jump_state;