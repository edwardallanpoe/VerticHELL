//create
event_inherited();

physics_world_gravity(0, 10);


//used only when player is controlling the seeker

jump_dist = 2;			// How far you jump when not holding 'j'
long_jump_dist = 3.5;

accel = 5 // How many frames it takes for you to reach full speed
slide_friction = 0.05;

walk_spd = 1.5;
run_spd = 4;

jump = -450;

onGround = false;
doubleJump = false;

// used by both the seeker player and the seeker AI
len = 0;
dir = 0;

global.pickDir = 0;

wander_spd = 0.5;
chase_spd = 0.8;

terminal_vel = 20;
apogee = -30;

state = scr_seeker_ai_idle;

draw_set_font(font0);
draw_set_colour(c_white);

alarm[0] = room_speed*irandom_range(2, 4);
sight = 200;
targetx = 0;