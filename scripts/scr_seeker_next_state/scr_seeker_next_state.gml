//choosing next state

if (alarm[0] <= 0) {
	
	state = choose(scr_seeker_ai_wander, scr_seeker_ai_idle);
	global.pickDir = random_range(-1, 1);
	alarm[0] = room_speed*irandom_range(2, 3);
	targetx = random(room_width);
}