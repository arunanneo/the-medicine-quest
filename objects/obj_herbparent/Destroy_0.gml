/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 27C54E28
/// @DnDArgument : "output" "herbs"
/// @DnDArgument : "var" "global.herb_amount"
herbs = global.herb_amount;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BC5F1CF
/// @DnDArgument : "var" "herbs"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "11"
if(herbs >= 11){	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 45322F9E
	/// @DnDParent : 1BC5F1CF
	room_goto_next();}