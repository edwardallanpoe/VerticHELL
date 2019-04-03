//chase player
scr_seeker_player_check();

var chaseDir = sign(targetx - x);

dir = point_direction(0, 0, chaseDir, 0);
len = chase_spd;

sprite_index = spr_en_seeker_run;
image_speed = 1;


phy_speed_x = lengthdir_x(len, dir)
phy_position_x += sign(targetx - x);
image_xscale = -sign(phy_speed_x);
