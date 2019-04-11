//injured

stunDelay = max(stunDelay-1, 0);

if (stunDelay > 0) {
	sprite_index = spr_en_seeker_injury;
	image_index = 1;
	image_speed = 0;
} else if (stunDelay == 0) {
	scr_seeker_player_check();
}

