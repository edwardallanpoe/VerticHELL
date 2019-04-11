//attack

switch (sprite_index) {
	
	case spr_player_idle:
		sprite_index = spr_player_punch
		
		break;
		
	case spr_player_walk:
		sprite_index = spr_player_punch
		
		break;
		
	case spr_player_run:
		sprite_index = spr_player_punch
		
		break;
	
}

if (image_index >= 2) and (attacked == false) {
	var damage = instance_create_depth(x, y, 1, obj_damage);
	//damage.image_xscale = image_xscale;
	damage.creator = id;
	attacked = true;
}