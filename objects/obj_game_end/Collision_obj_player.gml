/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 361A78B0
/// @DnDArgument : "var" "herb_amount"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "20"
if(herb_amount >= 20){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4A5B17D1
	/// @DnDParent : 361A78B0
	/// @DnDArgument : "room" "rm_win"
	/// @DnDSaveInfo : "room" "rm_win"
	room_goto(rm_win);}

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 4A583805
/// @DnDArgument : "room" "rm_lose"
/// @DnDSaveInfo : "room" "rm_lose"
room_goto(rm_lose);