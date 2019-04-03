x += (obj_player.x - x) * .7;
y += (obj_player.y - y) * .7;

if (layer_exists("spooky_trees_bg")) {
	layer_x("spooky_trees_bg", x * 0.15);
}

if (layer_exists("spooky_trees_mg")) {
	layer_x("spooky_trees_mg", x * 0.17);
}

if (layer_exists("spooky_trees_fg")) {
	layer_x("spooky_trees_fg", x * 0.2);
}
