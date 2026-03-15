///// @description 

var g_width = display_get_gui_width();
var g_height = display_get_gui_height();

// draw outside shadow
draw_set(c_black, 0.2);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	(g_width - ui_padding_x) + ui_border_size,
	(g_height - ui_padding_y) + ui_border_size,
	false
);

// draw outside rectangle
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x,
	ui_padding_y,
	g_width - ui_padding_x,
	g_height - ui_padding_y,
	false
);

// draw rectangle inside
draw_set(color_background, 1);
draw_rectangle(
	ui_padding_x + ui_border_size,
	ui_padding_y + ui_border_size,
	g_width - ui_padding_x - ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
);

// draw horizontal line
draw_set(color_border, 1);
draw_rectangle(
	ui_padding_x + ui_panel_left,
	ui_padding_y + ui_border_size,
	ui_padding_x + ui_panel_left + ui_border_size,
	g_height - ui_padding_y - ui_border_size,
	false
);

// draw labels - scaled fnt_title for medium size
draw_set_font(fnt_title);
text_align(fa_left, fa_top);
draw_set(color_inventory_text, 1);

var _text_scale = 0.35;
var _stats_x = ui_padding_x + (ui_border_size * 3);
var _stats_y = ui_padding_y + (ui_border_size * 4);
draw_set(c_black, 0.5);
draw_text_transformed(_stats_x + 4, _stats_y + 4, "Stats", _text_scale, _text_scale, 0);
draw_set(c_white, 1);
draw_text_transformed(_stats_x, _stats_y, "Stats", _text_scale, _text_scale, 0);

var _grid_start_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding;
var _grid_width = inventory_columns * (ui_inventory_margin + ui_inventory_box);
var _first_row_y = ui_padding_y + (ui_border_size * 13);
var _inv_label_y = _first_row_y - 12;
text_align(fa_center, fa_middle);
draw_set(c_black, 0.5);
draw_text_transformed(_grid_start_x + _grid_width / 2 + 4, _inv_label_y + 4, "Inventory", _text_scale, _text_scale, 0);
draw_set(c_white, 1);
draw_text_transformed(_grid_start_x + _grid_width / 2, _inv_label_y, "Inventory", _text_scale, _text_scale, 0);
text_align(fa_left, fa_top);

// mouse position
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// draw inventory place holders
inventory_items = inventory.item_get();
for (var row = 0; row < inventory_rows; row++) {
	var pos_y = ui_padding_y + (ui_border_size * 13) +
	(row * (ui_inventory_margin + ui_inventory_box));
    for (var column = 0; column < inventory_columns; column++) {
		var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));
		
		// draw offset sprite for shadow
		draw_sprite_ext(
			spr_Inventory_Box,
			0,
			pos_x + 4,
			pos_y + 4,
			1,
			1,
			0,
			c_black,
			0.4
		);
		
		// draw inventory box sprite
		draw_sprite(spr_Inventory_Box, 0, pos_x, pos_y);
		
		var inventory_index = (row * inventory_columns) + column;
		if(inventory_index <= array_length(inventory_items) - 1) {
			var _spr = inventory_items[inventory_index].sprite;
			var _w = sprite_get_width(_spr);
			var _h = sprite_get_height(_spr);
			var _scale = min(ui_inventory_box / _w, ui_inventory_box / _h);
			var _draw_x = pos_x + ui_inventory_box / 2;
			var _draw_y = pos_y + ui_inventory_box / 2;
			draw_sprite_ext(_spr, 0, _draw_x, _draw_y, _scale, _scale, 0, c_white, 1);
		}
		
		//// if our mouse is between one of the columns let's highlight it
		if(is_between(mx, pos_x, pos_x + ui_inventory_box)) {
			if(is_between(my, pos_y, pos_y + ui_inventory_box)) {
				draw_set(color_inventory_highlight, 0.2);
				draw_rectangle(
					pos_x,
					pos_y,
					pos_x + ui_inventory_box,
					pos_y + ui_inventory_box,
					false
				);
				draw_reset();
			}
		}
		
		//// quantity badge (small circle and scaled text)
		if(inventory_index <= array_length(inventory_items) - 1) {
			draw_set(#232323, 1);
			draw_circle(
				pos_x + ui_inventory_box,
				pos_y + ui_inventory_box,
				8,
				false
			);
			
			draw_set(c_white, 1);
			text_align(fa_center, fa_middle);
			draw_text_transformed(
				pos_x + ui_inventory_box,
				pos_y + ui_inventory_box,
				string(inventory_items[inventory_index].quantity),
				0.18,
				0.18,
				0
			);
		}
	}
}

draw_reset();