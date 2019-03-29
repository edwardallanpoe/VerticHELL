//step
scr_get_input();

script_execute(state);

if (layer_exists("spooky_trees_bg")) {
	layer_x("spooky_trees_bg", x/4);
}

if (layer_exists("spooky_trees_mg")) {
	layer_x("spooky_trees_mg", x/5);
}

if (layer_exists("spooky_trees_fg")) {
	layer_x("spooky_trees_fg", x/4);
}

