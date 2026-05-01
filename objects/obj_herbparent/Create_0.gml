/// @description Remove herbs that Johnny already collected before a room restart.
if (!variable_global_exists("collected_herbs")) {
	global.collected_herbs = [];
}

herb_collect_key = room_get_name(room) + ":" + object_get_name(object_index) + ":" + string(round(x)) + ":" + string(round(y));
skip_level_advance = false;

for (var i = 0; i < array_length(global.collected_herbs); i++) {
	if (global.collected_herbs[i] == herb_collect_key) {
		skip_level_advance = true;
		instance_destroy();
		break;
	}
}
