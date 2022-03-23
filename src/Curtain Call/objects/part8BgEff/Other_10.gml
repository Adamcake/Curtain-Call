draw_self();
var a = draw_get_alpha();
var c1 = make_colour_hsv(hue, 240, val);
var c2 = make_colour_hsv((hue + 35) % 255, 240, val);
draw_set_alpha(bgalpha);
draw_rectangle_colour(0, 0, room_width, room_height, c1, c1, c2, c2, false);
draw_set_alpha(baralpha);
draw_set_colour(c_black);
for(var _y = (f % 8) - 8; _y < room_height; _y += 8) {
	draw_rectangle(0, _y, room_width, _y + 4, false);
}
draw_set_alpha(a);
