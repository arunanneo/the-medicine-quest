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
	/// @DnDArgument : "number" "4"
	/// @DnDSaveInfo : "sprite" "spr_heart"
	var l05B19651_0 = sprite_get_width(spr_heart);var l05B19651_1 = 0;for(var l05B19651_2 = 4; l05B19651_2 > 0; --l05B19651_2) {	draw_sprite(spr_heart, 0, 30 + l05B19651_1, 30);	l05B19651_1 += l05B19651_0;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2F795A41
	/// @DnDParent : 54C58117
	/// @DnDArgument : "x" "1165"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "sprite" "spr_hud_herb"
	draw_sprite(spr_hud_herb, 0, 1165, 30);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 189727E9
	/// @DnDParent : 54C58117
	draw_set_font(noone);}