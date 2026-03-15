/// @description Toggle console with ` (backtick), handle input buffer, Enter (run), Tab (autocomplete), Escape (close).

var BACKTICK = 96;  // ord("`")

// Toggle: open when ` pressed and closed; close when ` or Escape when open
if (!global.console_open) {
	if (keyboard_check_pressed(BACKTICK)) {
		global.console_open = true;
		input_buffer = "";
		keyboard_string = "";
		last_message = "";
		autocomplete_matches = [];
		last_autocomplete_prefix = "";
	}
	exit;
}

if (keyboard_check_pressed(BACKTICK) || keyboard_check_pressed(vk_escape)) {
	global.console_open = false;
	input_buffer = "";
	keyboard_string = "";
	autocomplete_matches = [];
	exit;
}

// Consume typed keys into our buffer so other code doesn't see them
input_buffer += keyboard_string;
keyboard_string = "";

// Backspace: remove last character
if (keyboard_check_pressed(vk_backspace)) {
	input_buffer = string_copy(input_buffer, 1, string_length(input_buffer) - 1);
}

// Enter: run command
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_return)) {
	var line = string_trim(input_buffer);
	input_buffer = "";
	autocomplete_matches = [];
	last_autocomplete_prefix = "";

	if (line == "") {
		last_message = "";
		exit;
	}

	var parts = string_split(line, " ");
	var cmd = (array_length(parts) > 0) ? parts[0] : "";
	var rest = (array_length(parts) > 1) ? parts[1] : "";
	for (var i = 2; i < array_length(parts); i++) rest += " " + parts[i];

	if (cmd == "room") {
		last_message = scr_debug_cmd_room(rest);
	} else if (cmd != "") {
		last_message = "Unknown command: " + cmd;
	}
	exit;
}

// Tab: autocomplete only for "room <name>"
if (keyboard_check_pressed(vk_tab)) {
	var parts = string_split(string_trim(input_buffer), " ");
	if (array_length(parts) >= 1 && string_lower(parts[0]) == "room") {
		var prefix = (array_length(parts) >= 2) ? string_lower(parts[1]) : "";
		if (prefix != last_autocomplete_prefix) {
			autocomplete_index = 0;
			last_autocomplete_prefix = prefix;
		}
		var rooms = scr_debug_room_list();
		var matches = [];
		for (var i = 0; i < array_length(rooms); i++) {
			var rname = string_lower(room_get_name(rooms[i]));
			if (string_pos(prefix, rname) == 1 || prefix == "") {
				array_push(matches, room_get_name(rooms[i]));
			}
		}
		if (array_length(matches) > 0) {
			var chosen = matches[autocomplete_index];
			autocomplete_index = (autocomplete_index + 1) % array_length(matches);
			if (array_length(parts) >= 2) {
				parts[1] = chosen;
			} else {
				array_push(parts, chosen);
			}
			input_buffer = "room " + chosen + " ";
			autocomplete_matches = matches;
		}
	}
	keyboard_string = "";
	exit;
}
