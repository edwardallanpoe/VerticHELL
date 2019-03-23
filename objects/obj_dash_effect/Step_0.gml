//step
if (image_alpha > 0) {
	image_alpha -= .1;
} else if (image_alpha == 0) {
	instance_destroy();
}