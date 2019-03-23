state_machine_init();
//init state engine
state = noone;
state_next = state;
state_name = "Unknown";
state_timer = 0;
state_map = ds_map_create();
state_keys = ds_map_create(); //The inverse map of the state map.
state_stack = ds_stack_create();
state_new = true;
state_var[0] = 0;

state_can_interrupt = true;
state_is_invincible = false;
