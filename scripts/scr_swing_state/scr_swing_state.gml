//swing state

scr_collisions();

sprite_index = spr_player_jump;
image_index = 3;
image_speed = 0;

var _ropeAngleAcceleration = -0.2 * dcos(ropeAngle);
ropeAngleVelocity += _ropeAngleAcceleration;
ropeAngle += ropeAngleVelocity;
ropeAngleVelocity *= 0.99;

ropeX = grappleX + lengthdir_x(ropeLength, ropeAngle);
ropeY = grappleY + lengthdir_y(ropeLength, ropeAngle);

phy_speed_x = ropeX - phy_position_x;
phy_speed_y = ropeY - phy_position_y;

image_xscale = sign(phy_speed_x);


if (jumpPressed) {
	physics_apply_impulse(x, y, 0, jump);
	state = scr_jump_state;
	doubleJump = true;
}

if (slideKey) {
	phy_speed_x = len*1.5;
	state = scr_slide_state;
}