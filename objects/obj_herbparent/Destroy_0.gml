/// @description Advance when this room's herb quota is met.
if (!variable_instance_exists(id, "skip_level_advance") || !skip_level_advance) {
	scr_level_try_advance();
}
