//follow player

if instance_exists(obj_player) {
	x = obj_player.x;
	y = obj_player.y + 5;
} else {
	instance_destroy();
}

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = firingDelay - 1;

if (!place_meeting(mouse_x, mouse_y, obj_wall)) {
	if (mouse_check_button_pressed(mb_left)) and (firingDelay < 0) {
		firingDelay = 5;
		instance_create_depth(x, y, 1, obj_arrow);
		obj_arrow.creator = obj_player;
	
	}
}
