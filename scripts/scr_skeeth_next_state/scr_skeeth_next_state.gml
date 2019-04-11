if (alarm[0] <= 0) {
	
	state = choose(scr_skeeth_ai_idle, scr_skeeth_ai_wander);
	alarm[0] = room_speed*irandom_range(2, 3);
	targetx = random(room_width);
	
}