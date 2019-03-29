//init
phy_fixed_rotation = true;
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


terminal_vel = 20;
apogee = -30;


dashBuffer = true;

state = scr_move_state;

