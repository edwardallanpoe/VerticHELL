//injured


stunDelay = max(stunDelay-1, 0);

if (stunDelay > 0) {
	sprite_index = spr_player_slide;
	image_index = 1;
	image_speed = 0;
	
	invincible = true;
} else if (stunDelay == 0) {
	state = scr_move_state;
	invincible = false;
}