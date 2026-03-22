#macro DEBUG_CONSOLE 1
/// @description Returns true if the debug console should run (DEBUG_CONSOLE macro is 1). Use in obj_console Create.
/// Override in Project Options → Macros for Release config: DEBUG_CONSOLE = 0
/// @returns {Bool}
function scr_debug_console_enabled() {
	return DEBUG_CONSOLE;
}
