//scr_get_input();
scr_collisions();

invincible = true;

phy_speed_x = approach(phy_speed_x, 0, slide_friction);
phy_position_x += phy_speed_x;

show_debug_message("speed: " + string(phy_speed_x));

if (phy_speed_x != 0) {
	sprite_index = spr_player_slide;
	image_speed = 1;
	
	if (abs(phy_speed_x) <= 1) {
		sprite_index = spr_player_stand;
		image_speed = 1;
	}
	
} else if (phy_speed_x == 0) {
	state = scr_move_state;
}

if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	state = scr_jump_state;
	doubleJump = true;
}