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
		
		if (dis >= 75) {
			
			switch (sprite_index) {
				
				case spr_en_seeker_idle:
					sprite_index = spr_en_seeker_alert;
					break;
					
				case spr_seeker_walk:
					sprite_index = spr_en_seeker_alert;
					break;
				
			}
			
		} else if (dis < 75) {
			state = scr_seeker_ai_chase;
			targetx = obj_player.x;	
		}
		

	} else {
		if (state == scr_seeker_ai_chase) {
			state = choose(scr_seeker_ai_wander, scr_seeker_ai_idle);
		}
		scr_seeker_next_state();	
	}
} else {
	scr_seeker_next_state();
}