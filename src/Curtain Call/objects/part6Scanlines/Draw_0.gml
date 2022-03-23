var _y;
var a = draw_get_alpha();
draw_set_alpha(0.15 * alpha);
draw_set_colour(c_black);
for(_y = (f % 6) - 6; _y < room_height; _y += 6) {
	draw_rectangle(0, _y, room_width, _y + 4, false);
}
draw_set_alpha(a);
