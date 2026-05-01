if (variable_global_exists("console_open") && global.console_open) {
	exit;
}

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 0A0C4552
/// @DnDArgument : "room" "rm_test"
/// @DnDSaveInfo : "room" "rm_test"
room_goto(rm_test);