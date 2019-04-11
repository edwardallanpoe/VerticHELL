grappleX = mouse_x;
grappleY = mouse_y;
ropeX = phy_position_x;
ropeY = phy_position_y;
ropeAngleVelocity = 0;
ropeAngle = point_direction(grappleX, grappleY, x, y);
ropeLength = point_distance(grappleX, grappleY, x, y);

if (layer_exists("Walls")) {
	var wallDepth = layer_get_depth("Walls");
	instance_create_depth(x, y, wallDepth, obj_grapple);
}
