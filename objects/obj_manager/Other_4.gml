/// @description Room Start — after all instances have run Create. Reset herb quota once (not per herb instance).
if (room == rm_plains || room == rm_forest || room == rm_mtn) {
	global.herb_amount = 0;
	if (scr_debug_console_enabled()) {
		show_debug_message("[herb_progress] Room Start: global.herb_amount=0 in " + room_get_name(room));
	}
}
