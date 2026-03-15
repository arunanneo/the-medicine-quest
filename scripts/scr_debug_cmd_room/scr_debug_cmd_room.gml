/// @description Run the "room" debug command. Goes to the given room or returns an error string.
/// @param {String} room_name - The room name to go to (e.g. "rm_plains" or partial for match)
/// @returns {String} Empty string on success, or an error message (e.g. "Unknown room: xyz")
function scr_debug_cmd_room(room_name) {
	var name_trim = string_trim(room_name);
	if (name_trim == "") {
		return "Usage: room <room-name>";
	}
	var rooms = scr_debug_room_list();
	for (var i = 0; i < array_length(rooms); i++) {
		var r = rooms[i];
		if (room_get_name(r) == name_trim) {
			room_goto(r);
			return "";
		}
	}
	return "Unknown room: " + name_trim;
}
