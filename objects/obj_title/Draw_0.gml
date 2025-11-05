/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2322AFBD
/// @DnDArgument : "font" "fnt_title"
/// @DnDSaveInfo : "font" "fnt_title"
draw_set_font(fnt_title);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3D7E75D8
/// @DnDArgument : "halign" "fa_middle"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6FD13F5F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""The Medicine Quest""
draw_text(x + 0, y + 0, string("The Medicine Quest") + "");