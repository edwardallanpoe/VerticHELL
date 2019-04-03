//check for player distance

//enum seeker_warn {
	
//	stage_1 = sight,
	
//	stage_2 = sight - 25,
	
//	stage_3 = sight - 50,
	
//	stage_4 = sight - 75,
	
//}



if (instance_exists(obj_player)) {
	
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	
	
	if (dis < sight) {
		
		state = scr_seeker_ai_chase;
		targetx = obj_player.x;
	} else {
		if (state == scr_seeker_ai_chase) {
			state = choose(scr_seeker_ai_wander, scr_seeker_ai_idle);
		}
		scr_seeker_next_state();	
	}
} else {
	scr_seeker_next_state();
}