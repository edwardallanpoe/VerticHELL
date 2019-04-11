scr_skeeth_player_check();

dir = point_direction(0, 0, global.pickDir, 0);

len = wander_spd * global.pickDir;

phy_speed_x = len;
phy_position_x += phy_speed_x;

image_xscale = -sign(phy_speed_x);