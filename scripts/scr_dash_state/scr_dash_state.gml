scr_get_input();
scr_collisions();
len = walk_spd*1.5;

var dash_spd = lengthdir_x(len, dir);
var dashSprite = instance_create_depth(x, y, 1, obj_dash_effect);

phy_speed_x = lerp(phy_speed_x, dash_spd, dash_friction);

dashSprite.sprite_index = sprite_index;
dashSprite.image_index = image_index;