var factor = 1 - EaseInQuad(min(f, 25), 0, 1, 25);
var wf = (min(factor, 0.5) * 2 * 0.99) + 0.01;
var hf = ((max(factor, 0.5) - 0.5) * 2 * 0.99) + 0.01;

if(surface_exists(s)) {
	draw_surface_ext(s, (room_width / 2) * (1 - wf), (room_height / 2) * (1 - hf), room_width * wf / surface_get_width(s), room_height * hf / surface_get_height(s), 0, c_white, wf);
} else {
	draw_set_colour(c_white);
	draw_rectangle((room_width / 2) * (1 - wf), (room_height / 2) * (1 - hf), room_width * wf, room_height * hf, false);
}
