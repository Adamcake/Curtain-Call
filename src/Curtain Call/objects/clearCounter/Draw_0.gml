draw_set_font(ClearsFont);
draw_set_colour(c_white);
draw_set_halign(fa_center);
switch(global.clears) {
	case 0:
		break;
	case 1:
		draw_text(x, y, "Game clear!");
		break;
	default:
		draw_text(x, y, "Game clear x" + string(global.clears));
		break;
}
