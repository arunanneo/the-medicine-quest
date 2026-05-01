if (!variable_global_exists("collected_herbs")) {
	global.collected_herbs = [];
}

if (!variable_instance_exists(id, "herb_collect_key")) {
	herb_collect_key = room_get_name(room) + ":" + object_get_name(object_index) + ":" + string(round(x)) + ":" + string(round(y));
}

var _already_collected = false;
for (var i = 0; i < array_length(global.collected_herbs); i++) {
	if (global.collected_herbs[i] == herb_collect_key) {
		_already_collected = true;
		break;
	}
}

if (!_already_collected) {
	array_push(global.collected_herbs, herb_collect_key);
	global.herb_amount += 1;

	// Add the exact herb Johnny touched so the inventory matches this run's pickups.
	if (object_index == obj_herb_1) {
		scr_inventory_add("Yellow Herb", 1, spr_herb3);
	} else if (object_index == obj_herb_2) {
		scr_inventory_add("Blue Herb", 1, spr_herb1);
	} else if (object_index == obj_herb_3) {
		scr_inventory_add("Green Herb", 1, spr_herb2);
	} else {
		scr_inventory_add("Herb", 1, sprite_index);
	}
}

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 6EBFB82D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "4"
/// @DnDArgument : "size" "2"
effect_create_below(4, x + 0, y + 0, 2, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5A4126BC
instance_destroy();