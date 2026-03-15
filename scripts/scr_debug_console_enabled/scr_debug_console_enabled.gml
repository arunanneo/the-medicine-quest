/// @description Returns true if the debug console should run (DEBUG_CONSOLE macro is 1). Use in obj_console Create.
/// Preprocessor #if only works in scripts, not in object events.
/// @returns {Bool}
function scr_debug_console_enabled() {
	#if macro_exists("DEBUG_CONSOLE") && DEBUG_CONSOLE
	return true;
	#else
	return false;
	#endif
}
