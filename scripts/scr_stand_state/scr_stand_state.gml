scr_collisions();

sprite_index = spr_player_idle;
image_speed = 1;

// switch to move state with input
//if (move != 0) {

if ((rightKey - leftKey) != 0) {
#region PREVIOUS SCRIPT
	// len is set to a value in the player create event, as well as dir. these
	// variables are reserved for the length_dirX(len, dir) function,
	// which is used to tell gamemaker the length of movement the object undergoes,
	// as well as which direction on both axes the movement should follow.

	// the code below is only run a single time before entering the move 
	// state. setting the speed to a specific value will no longer keep the speed at
	// that value upon switching to the move state, because the move state immediately
	// changes it to something new based off of the global len variable.
	// this state is only active when there is no input, so it should only be used to
	// provide a small impulse if anything, immediately switching to movement after.

	//var len = walk_spd * move
	//if (abs(phy_speed_x) < abs(len)) {
	//	phy_speed_x += len / accel
	//} else  {
	//	phy_speed_x = len;
	//}
#endregion
	state = scr_move_state;
}

//jump check
if (jumpPressed) and (onGround) {
	physics_apply_impulse(x, y, 0, jump);
	state = scr_jump_state;
}

//check for no ground
if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	state = scr_jump_state;
}