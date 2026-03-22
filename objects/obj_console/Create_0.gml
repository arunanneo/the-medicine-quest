/// @description Debug console: only runs if DEBUG_CONSOLE is 1 (add in Project Options → Macros for Default config).
if (!scr_debug_console_enabled()) {
	instance_destroy();
	exit;
}

global.console_open = false;
input_buffer = "";
last_message = "";
autocomplete_index = 0;
autocomplete_matches = [];
last_autocomplete_prefix = "";
