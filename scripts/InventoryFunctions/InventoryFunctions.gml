/// Helper functions for inventory UI and drawing

function draw_set(_color, _alpha) {
	// Convenience wrapper to set both color and alpha
	draw_set_color(_color);
	draw_set_alpha(_alpha);
}

function draw_reset() {
	// Reset draw color and alpha to sensible defaults
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

function text_align(_halign, _valign) {
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}

function is_between(_value, _min, _max) {
	return (_value >= _min) && (_value <= _max);
}