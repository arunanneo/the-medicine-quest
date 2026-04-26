/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7231B2BC
/// @DnDArgument : "expr" "-3"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hearts"
hearts += -3;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 153E585D
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F442130
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "3"
if(hearts <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3515BDED
	/// @DnDParent : 3F442130
	/// @DnDArgument : "spriteind" "spr_johnnykirkded"
	/// @DnDSaveInfo : "spriteind" "spr_johnnykirkded"
	sprite_index = spr_johnnykirkded;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1EE226E5
	/// @DnDParent : 3F442130
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, 60);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1A0BBA75
	/// @DnDParent : 3F442130
	/// @DnDArgument : "var" "global.herb_amount"
	global.herb_amount = 0;

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 26732D05
	/// @DnDParent : 3F442130
	room_restart();}