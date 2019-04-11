if instance_exists(obj_player) {
	x += (obj_player.x - x) /2;
	y += (obj_player.y - y) /2;
}


if (layer_exists("spooky_trees_bg")) {
	layer_x("spooky_trees_bg", -x/10);
}

if (layer_exists("spooky_trees_mg")) {
	layer_x("spooky_trees_mg", -x/6);
}

if (layer_exists("spooky_trees_fg")) {
	layer_x("spooky_trees_fg", -x/4);
}

if (layer_exists("vines")) {
	layer_x("vines", -x/2.5);
}

if (layer_exists("treetops")) {
	layer_x("treetops", -x/2);
}

//if (layer_exists("grass")) {
//	layer_x("grass", -x/8);
//}