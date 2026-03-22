/// @description Draw the debug console bar at bottom of screen (only when open).

if (!global.console_open) {
	exit;
}

var gw = display_get_gui_width();
var gh = display_get_gui_height();
var bar_h = 48;
var y0 = gh - bar_h;
var pad = 8;
var prompt = "> " + input_buffer;

draw_set_color(c_black);
draw_rectangle(0, y0, gw, gh, false);
draw_set_alpha(0.85);
draw_rectangle(0, y0, gw, gh, false);
draw_set_alpha(1);

draw_set_color(c_lime);
draw_text(pad, y0 + pad, prompt);

if (last_message != "") {
	draw_set_color(c_red);
	draw_text(pad, y0 - 20, last_message);
	draw_set_color(c_white);
}

if (array_length(autocomplete_matches) > 0) {
	draw_set_color(c_gray);
	var hint = "Tab: " + array_join(autocomplete_matches, ", ");
	draw_text(pad, y0 - 38, hint);
	draw_set_color(c_white);
}
