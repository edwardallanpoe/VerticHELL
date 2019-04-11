//init

damage = 1;
knockback = 125;

var arrowLen = point_distance(x, y, mouse_x, mouse_y);
var arrowDir = point_direction(x, y, mouse_x, mouse_y);

var arrowSpeedX = lengthdir_x(arrowLen, arrowDir);
var arrowSpeedY = lengthdir_y(arrowLen, arrowDir);


phy_speed_x = arrowSpeedX/4
phy_speed_y = arrowSpeedY/4;

image_xscale = sign(phy_speed_x);
phy_rotation = phy_speed_y;


//physics_world_gravity(0, 0);
