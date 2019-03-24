//scr_get_input();
scr_collisions();
len = abs(len)*1.5;

#region PREVIOUS SCRIPT

// there was no value for dir set outside of the player create event
// prior to this local variable being made, which caused the dash to move
// no distance. if there is no direction defined in another location,
// then the original dir in the create event will be used.

// the dash state is not like the standard move state, because it is 
// tied to an alarm that counts down based on the room speed.
// because of this, no input is necessary. the actual player speed is what
// should be modified, since the player is using the built-in physics speed
// varible from gamemaker.

// the speed should be set to the length/direction of the previous player
// movement, and then the physics x position of the player should move in 
// increments of the value of the player speed.

//var dash_spd = lengthdir_x(len, dir);
//var dashSprite = instance_create_depth(x, y, 1, obj_dash_effect);

//phy_speed_x = lerp(phy_speed_x, dash_spd, dash_friction);

//dashSprite.sprite_index = sprite_index;
//dashSprite.image_index = image_index;

#endregion

phy_speed_x = lengthdir_x(len, dir);

phy_position_x += phy_speed_x;

var dash = instance_create_depth(x, y, 1, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;