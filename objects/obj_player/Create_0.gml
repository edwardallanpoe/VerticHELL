//init
event_inherited();
physics_world_gravity(0, 10);



jump_dist = 2;			// How far you jump when not holding 'j'
long_jump_dist = 3.5;

accel = 5 // How many frames it takes for you to reach full speed
slide_friction = 0.05;

walk_spd = 1.7;
run_spd = 3;

jump = -150;


len = 0;
dir = 0;

onGround = false;
doubleJump = false;

onWall = 0;
h_wallJump = 100;
wallJumpSpd_max = -5;
v_wallJump = -120;


terminal_vel = 20;
apogee = -30;


dashBuffer = true;
wallJumpDelay = 0;
wallJumpDelayMax = 19;

attacked = false;
invincible = false;

stunDelay = 0;
stunDelayMax = 35;

draw_set_font(font0);
draw_set_colour(c_white);

state = scr_move_state;

