scr_skeeth_player_check();

var chaseDirX = sign(targetx - x);
var chaseDirY = sign(targety - y);

dir = point_direction(0, 0, chaseDirX, chaseDirY);
len = chase_spd;

phy_speed_x = lengthdir_x(len, dir);
phy_speed_y = lengthdir_y(len, dir);

phy_position_x += sign(targetx - x);
phy_position_y += sign(targety - y);
image_xscale = -sign(phy_speed_x);
