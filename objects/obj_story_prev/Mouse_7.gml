/// @description Go back in intro story or return to main menu.
event_inherited();

switch (room) {
	case rm_story_1: room_goto(rm_menu); break;
	case rm_story_2: room_goto(rm_story_1); break;
	case rm_story_3: room_goto(rm_story_2); break;
	case rm_story_4: room_goto(rm_story_3); break;
	case rm_story_5: room_goto(rm_story_4); break;
}
