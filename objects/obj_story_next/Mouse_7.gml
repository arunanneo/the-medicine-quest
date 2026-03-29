/// @description Advance intro story (explicit rooms—project room order is not sequential).
event_inherited();

switch (room) {
	case rm_story_1: room_goto(rm_story_2); break;
	case rm_story_2: room_goto(rm_story_3); break;
	case rm_story_3: room_goto(rm_story_4); break;
	case rm_story_4: room_goto(rm_story_5); break;
	case rm_story_5: room_goto(rm_plains); break;
}
