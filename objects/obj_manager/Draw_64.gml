// Skip HUD when inventory overlay is open (hearts drawn by obj_inventory_ui instead)
if (variable_global_exists("inventory_open") && global.inventory_open) {
	exit;
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 54C58117
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l54C58117_0 = false;l54C58117_0 = instance_exists(obj_player);if(l54C58117_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 05B19651
	/// @DnDParent : 54C58117
	/// @DnDArgument : "x" "30"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "sprite" "spr_heart"
	/// @DnDArgument : "number" "obj_player.hearts"
	/// @DnDSaveInfo : "sprite" "spr_heart"
	var l05B19651_0 = sprite_get_width(spr_heart);var l05B19651_1 = 0;for(var l05B19651_2 = obj_player.hearts; l05B19651_2 > 0; --l05B19651_2) {	draw_sprite(spr_heart, 0, 30 + l05B19651_1, 30);	l05B19651_1 += l05B19651_0;}

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 189727E9
	/// @DnDParent : 54C58117
	draw_set_font(noone);}