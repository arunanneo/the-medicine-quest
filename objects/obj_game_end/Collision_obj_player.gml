/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 361A78B0
/// @DnDArgument : "var" "herb_amount"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "8"
if(herb_amount >= 8){	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0AE8A759
	/// @DnDParent : 361A78B0
	room_goto_next();}

/// @DnDAction : YoYo Games.Rooms.Restart_Room
/// @DnDVersion : 1
/// @DnDHash : 6D6B1866
room_restart();