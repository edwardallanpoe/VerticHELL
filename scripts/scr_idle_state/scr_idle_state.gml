if (state_new) {
	phy_speed_x = 0;
	phy_speed_y = 0;
	sprite_index = spr_player;
}

if ((rightKey) and (!place_meeting(x + 1, y, obj_wall))) || 
	((leftKey) and (!place_meeting(x - 1, y, obj_wall))) {
		
		state_switch("Walk");
		
}

if (jumpPressed) {
	
	physics_apply_impulse(x, y, 0, jump * 5);
	state_switch("Air");
	
}

if (!place_meeting(x, y + 1, obj_wall)) {
	
	state_switch("Air");
	
}