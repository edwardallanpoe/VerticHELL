//init
players = instance_number(obj_lifeform_parent);

with(obj_lifeform_parent) {
	other.player[pID] = id;
}

sprite[0, 0] = spr_player_idle;
sprite[0, 1] = spr_player_walk;
sprite[0, 2] = spr_player_run;
sprite[0, 3] = spr_player_jump;
sprite[0, 4] = spr_player_fall;
sprite[0, 5] = spr_player_slide;
sprite[0, 6] = spr_player_stand;
sprite[1, 0] = spr_en_seeker_idle;
sprite[1, 1] = spr_seeker_walk;
sprite[1, 2] = spr_en_seeker_run;

gpList = ds_list_create();

enum ctrl {
	left,
	
	right, 
	
	jumpHel,
	
	jumpPre,
	
	jumpRel,
	
	dash, 
	
	slide, 
	
	walk,
	
	punch,
	
	swing,
	
	dive,
}

//for (var i = 0; i < 4; i++;) {
//	global.padIndex[i] = noone;
//	if gamepad_is_connected(i) {
//		show_debug_message("Gamepad " + string(i) + " Connected");
//		show_debug_message(gamepad_get_description(i));
//	}
//}

draw_set_font(font0);
draw_set_color(c_white);
