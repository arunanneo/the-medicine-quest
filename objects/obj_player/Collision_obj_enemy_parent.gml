/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CC32FCF
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "1"
if(alarm[0] < 0){	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40C85826
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "colour" "$FF0000E5"
	image_blend = $FF0000E5 & $ffffff;
	image_alpha = ($FF0000E5 >> 24) / $ff;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 550A4B99
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "x" "other.x"
	/// @DnDArgument : "y" "other.y"
	direction = point_direction(x, y, other.x, other.y);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 2BDA23A2
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 371281CD
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "speed" "12"
	speed = 12;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B8AA642
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += -1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 62AF5EAB
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "steps" "15"
	alarm_set(0, 15);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 174FD802
	/// @DnDParent : 1CC32FCF
	/// @DnDArgument : "var" "hearts"
	/// @DnDArgument : "op" "1"
	if(hearts < 0){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 244BBCD3
		/// @DnDParent : 174FD802
		room_restart();}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 356E801B
	/// @DnDParent : 1CC32FCF
	else{}}