/// @description One screen of intro story per room (copy from Medicine quest Words.md).
var gw = display_get_gui_width();
var gh = display_get_gui_height();
var body = "";
switch (room) {
	case rm_story_1:
		body = "Once upon a time there was a boy named Johnny, who lived in the plains. Johnny lives with his grandfather, Smith, in a remote house .";
		break;
	case rm_story_2:
		body = "One day, after Johnny comes back from hunting, he finds out his grandfather had caught the deadly disease that had killed his parents 2 years prior, cheddariosis, which has a mortality rate of 100% without treatment, killing in only 4 days.";
		break;
	case rm_story_3:
		body = "His grandfather told him, feeble from the sickness, that this horrible disease is only cured from a mixture of three herbs, each being difficult to find.";
		break;
	case rm_story_4:
		body = "One is the elusive gildedflower, found in the farthest reaches of the plains, another is the endangered glowdrop, found in the darkest parts of the forest, and the final one is the gembloom, only found in a small patch found in the deepest parts of the mountain cave.";
		break;
	case rm_story_5:
		body = "You will have to collect all three herbs, encountering many obstacles along the way. Try not to lose all three hearts, or you will die! Can you save Johnny's grandfather?";
		break;
	default:
		return;
}

draw_set_font(fnt_story);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(gw * 0.5, gh * 0.42, body, 28, gw * 0.72);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
