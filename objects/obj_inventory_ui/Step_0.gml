/// @description Toggle inventory on I key and handle clicks

if (keyboard_check_pressed(ord("I"))) {
	global.inventory_open = !global.inventory_open;
}

if (!global.inventory_open) {
	exit;
}

if (!variable_global_exists("player_inventory")) {
	exit;
}

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var inventory_items = global.player_inventory.item_get();
var pos_x = 0;
var pos_y = 0;

if (mouse_check_button_released(mb_left)) {
	for (var row = 0; row < inventory_rows; row++) {
		pos_y = ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
		for (var column = 0; column < inventory_columns; column++) {
			pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));

			if (is_between(mx, pos_x, pos_x + ui_inventory_box)) {
				if (is_between(my, pos_y, pos_y + ui_inventory_box)) {
					var inventory_index = (row * inventory_columns) + column;
					if (inventory_index <= array_length(inventory_items) - 1) {
						show_debug_message($"Using {inventory_items[inventory_index].name}");
						global.player_inventory.item_subtract(inventory_items[inventory_index].name, 1);
					} else {
						show_debug_message("No inventory item here!");
					}
					break;
				}
			}
		}
	}
}
