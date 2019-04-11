//init

event_inherited();

wander_spd = 0.5;
chase_spd = 0.8;

stunDelay = 0;
stunDelayMax = 35;

state = scr_skeeth_ai_idle;

alarm[0] = room_speed*irandom_range(2, 4);
sight = 125;
targetx = 0;
targety = 0;