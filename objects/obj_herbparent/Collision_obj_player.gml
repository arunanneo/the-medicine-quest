/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7199FE48
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "global.herb_amount"
global.herb_amount += 1;

// Add herb to player inventory
if (object_index == obj_herb_2) {
	scr_inventory_add("Blue Herb", 1, spr_herb1);
} else if (object_index == obj_herb_3) {
	scr_inventory_add("Green Herb", 1, spr_herb2);
} else {
	scr_inventory_add("Herb", 1, spr_herb1);
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