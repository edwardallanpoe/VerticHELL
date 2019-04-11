//step
if (image_alpha > 0) {
	image_alpha -= .05;
	image_blend = choose(c_blue, c_lime, c_purple, c_yellow);
} else if (image_alpha == 0) {
	instance_destroy();
}