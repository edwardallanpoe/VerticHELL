if (instance_exists(obj_player)) {
	
	var dis = point_distance(x, y, obj_player.x, obj_player.y);
	
	
	if (dis < sight) {
		
			state = scr_skeeth_ai_chase;
			targetx = obj_player.x;	
			targety = obj_player.y;
		
	} else {
		if (state == scr_skeeth_ai_chase) {
			state = choose(scr_skeeth_ai_wander, scr_skeeth_ai_idle);
		}
		scr_skeeth_next_state();	
	}
} else {
	scr_skeeth_next_state();
}