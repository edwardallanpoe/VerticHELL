if (physics_test_overlap(x, y + 1, 0, obj_wall)) {
	onGround = true;
} else if (!physics_test_overlap(x, y + 1, 0, obj_wall)) {
	onGround = false;
}
