//init
phy_fixed_rotation = true;
physics_world_gravity(0, 50);


jump_dist = 4;			// How far you jump when not holding 'j'
long_jump_dist = 5.5;

accel = 10 // How many frames it takes for you to reach full speed

walk_spd = 4;
run_spd = 5.5;
jump = -300;
len = 0;
dir = 0;

terminal_vel = 20;
apogee = -30;

air_friction = 0.02;
dash_friction = 0.08;

dashBuffer = true;

state = scr_move_state;

