/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5577447E
/// @DnDArgument : "var" "dash_state"
if(dash_state == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 589DC0F3
	/// @DnDParent : 5577447E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "dash_state"
	dash_state = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5B43D821
	/// @DnDParent : 5577447E
	/// @DnDArgument : "speed" "30"
	/// @DnDArgument : "speed_relative" "1"
	speed += 30;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5A06A49B
	/// @DnDParent : 5577447E
	/// @DnDArgument : "steps" "7"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 7);}

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 39FC33D8
exit;