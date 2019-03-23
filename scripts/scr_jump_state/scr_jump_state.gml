//midair
scr_get_input();

physics_world_gravity(0, 100);

var move = rightKey - leftKey;


dir = point_direction(0, 0, move, 0);

//get length of movement
if (move == 0) {
	len = 0;
} else if (move != 0) {
	
	if (!runKey) {
		len = jump_dist;
	} else {
		len = long_jump_dist;
	}
}

//apply movement forces in air
if (move > 0) {
	physics_apply_force(x, y, len, 0);
} else if (move < 0) {
	physics_apply_force(x, y, -len, 0);
}

//dash check
if (dashKey) and (dashBuffer) {
	dashBuffer = false;
	state = scr_dash_state;
	alarm[0] = room_speed/12;
	alarm[1] = room_speed/2;
}

//continue to move player x position by half the total speed/2
phy_position_x += phy_speed_x/2

//checking for collision below player
if (physics_test_overlap(x, y + 1, 0, obj_wall)) {
	onGround = true;
	
	if (phy_speed_x == 0) {
		state = scr_stand_state;
	} else {
		phy_position_x += phy_speed_x;
		state = scr_move_state;
	}

} else if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	sprite_index = spr_player_jump;
	image_speed = 0;
	
	
	
	if (phy_speed_y > 0) {
		image_index = 1;
		phy_speed_y = lerp(0, phy_speed_y, 1.1);
	} else if (phy_speed_y < 0) { 
		image_index = 0;
	}
}
	