/// @description Returns an array of all room asset references for the debug console.
/// Room names are resolved at runtime via room_get_name(); this list keeps refs so the compiler doesn't strip them.
/// @returns {Array} Array of room asset IDs (e.g. rm_plains, rm_menu, ...)
function scr_debug_room_list() {
	return [
		rm_plains,
		rm_menu,
		rm_story_1,
		rm_story_2,
		rm_story_3,
		rm_story_4,
		rm_story_5,
		rm_test,
		rm_credits,
		rm_win,
		rm_forest,
		rm_lose,
		rm_mtn
	];
}
