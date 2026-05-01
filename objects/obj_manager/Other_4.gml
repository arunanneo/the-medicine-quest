/// @description Room Start — after all instances have run Create. Reset herb quota once (not per herb instance).
if (room == rm_plains || room == rm_forest || room == rm_mtn) {
	global.herb_amount = 0;
	if (variable_global_exists("collected_herbs")) {
		var _room_prefix = room_get_name(room) + ":";
		for (var i = 0; i < array_length(global.collected_herbs); i++) {
			if (string_pos(_room_prefix, global.collected_herbs[i]) == 1) {
				global.herb_amount += 1;
			}
		}
	}
	if (scr_debug_console_enabled()) {
		show_debug_message("[herb_progress] Room Start: global.herb_amount=" + string(global.herb_amount) + " in " + room_get_name(room));
	}
}
