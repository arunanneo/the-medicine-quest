/// @description After a herb pickup (Destroy), advance if this biome's quota is met.
/// global.herb_amount is reset once per room in obj_manager Room Start (Other_4), not in each herb's Create.
/// Goals and next rooms are set in the if (room == …) chain below (e.g. plains → rm_forest).
function scr_level_try_advance() {
	var _debug = scr_debug_console_enabled();
	var herbs = global.herb_amount;
	var goal = 0;
	var next_room = -1;

	if (room == rm_plains) {
		goal = 8;
		next_room = rm_forest;
	} else if (room == rm_forest) {
		goal = 11;
		next_room = rm_mtn;
	} else if (room == rm_mtn) {
		goal = 15;
		next_room = rm_win;
	} else {
		if (_debug) {
			show_debug_message("[scr_level_try_advance] skip: room=" + room_get_name(room) + " (not a biome progression room)");
		}
		return;
	}

	if (_debug) {
		show_debug_message("[scr_level_try_advance] room=" + room_get_name(room) + " herbs=" + string(herbs) + "/" + string(goal) + " next=" + room_get_name(next_room));
	}

	if (herbs >= goal) {
		global.bonus_herbs = herbs - goal;
		if (_debug) {
			show_debug_message("[scr_level_try_advance] ADVANCE bonus_herbs=" + string(global.bonus_herbs) + " -> " + room_get_name(next_room));
		}
		room_goto(next_room);
	} else if (_debug) {
		show_debug_message("[scr_level_try_advance] below goal (" + string(herbs) + " < " + string(goal) + "), staying in room");
	}
}
