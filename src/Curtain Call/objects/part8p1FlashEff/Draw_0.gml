draw_set_colour(c);
draw_set_alpha(abs(sin(f * 2 * pi / 50)) * image_alpha);
draw_rectangle(-10, -10, room_width + 10, room_height + 10, false);
draw_set_colour(c_black);
draw_set_alpha(1.0);
draw_rectangle(-100, -100, room_width + 100, -1, false);
draw_rectangle(-100, room_height, room_width + 100, room_height + 100, false);
draw_rectangle(-100, -100, -1, room_height + 100, false);
draw_rectangle(room_width, -100, room_width + 100, room_height + 100, false);
