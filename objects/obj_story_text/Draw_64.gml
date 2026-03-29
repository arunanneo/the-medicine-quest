/// @description One screen of intro story per room (copy from Medicine quest Words.md).
var gw = display_get_gui_width();
var gh = display_get_gui_height();
var body = "";
switch (room) {
	case rm_story_1:
		body = "Johnny (that's you) is trying to help his grandfather, whose name is Smith.";
		break;
	case rm_story_2:
		body = "Smith is very sick. Johnny goes on a quest to find herbs to make medicine for him.";
		break;
	case rm_story_3:
		body = "He travels across three places —- the plains, the forest, and the mountain. He must find enough herbs in each place before he can move on.";
		break;
	case rm_story_4:
		body = "You will encounter obstacles. Try not to lose all three lives!";
		break;
	case rm_story_5:
		body = "Can you save Johnny's grandfather??";
		break;
	default:
		return;
}

draw_set_font(-1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(gw * 0.5, gh * 0.42, body, 28, gw * 0.72);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
