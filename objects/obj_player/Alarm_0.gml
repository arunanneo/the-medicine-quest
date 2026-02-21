/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7A26FB3D
/// @DnDArgument : "spriteind" "spr_johnnyjumping"
/// @DnDSaveInfo : "spriteind" "spr_johnnyjumping"
sprite_index = spr_johnnyjumping;
image_index = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 43497893
speed = 0;

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7E2FBD94
image_blend = $FFFFFFFF & $ffffff;
image_alpha = ($FFFFFFFF >> 24) / $ff;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0A7F9204
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_collision"
/// @DnDSaveInfo : "object" "obj_collision"
var l0A7F9204_0 = instance_place(x + 0, y + 0, [obj_collision]);if ((l0A7F9204_0 > 0)){	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 157351B8
	/// @DnDParent : 0A7F9204
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "y_relative" "1"
	x += 0;y += 100;}