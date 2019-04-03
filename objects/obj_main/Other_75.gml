//var mapping = "030000007e0500000620000001000000,Joy-Con (L),+leftx:h0.2,+lefty:h0.4,-leftx:h0.8,-lefty:h0.1,a:b0,b:b1,back:b13,leftshoulder:b4,leftstick:b10,rightshoulder:b5,start:b8,x:b2,y:b3,platform:Mac OS X,"

var gp_num = gamepad_get_device_count();

for (i = 0; i<gp_num; i++;) {
	var _guid = gamepad_get_guid(i);
	var _desc = gamepad_get_description(i);
	var gp_map = gamepad_get_mapping(i);
	var h_num = gamepad_hat_count(i);
	
	
	show_debug_message(_guid + "," + _desc);
	show_debug_message("mapping: " + gp_map);
	show_debug_message("hats: " + string(h_num));
}

show_debug_message("Event = " + async_load[? "event_type"]);
show_debug_message("Pad = " + string(async_load[? "pad_index"]));

switch (async_load[? "event_type"]) {
	
	case "gamepad discovered":
		ds_list_add(gpList, async_load[? "pad_index"]);
		
		break;
		
	case "gamepad lost":
		var gID = ds_list_find_index(gpList, async_load[? "pad_index"]);
		ds_list_delete(gpList, gID);
		
		break;
	
}