draw_rectangle_colour(0, 0, room_width, room_height, make_colour_hsv(0, 0, 150), make_colour_hsv(0, 0, 150), make_colour_hsv(0, 0, 188), make_colour_hsv(0, 0, 188), false);
draw_set_alpha(0.15);
draw_rectangle_colour(0, 0, room_width, room_height, make_colour_hsv(f mod 255, 235 + sin(f / 25) * 20, 255), make_colour_hsv(f mod 255, 235 + cos(f / 25) * 20, 255), make_colour_hsv((f + 30) mod 255, 235 + cos(f / 25) * 20, 255), make_colour_hsv((f + 30) mod 255, 235 + sin(f / 25) * 20, 255), false);
draw_set_alpha(1.0);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sBossCircleLight, 0, room_width / 2, room_height / 2, 1.3 + sin(f / 45) * 0.6, 1.3 + sin(f / 45) * 0.6, f * 2, c_white, 0.025);
draw_set_blend_mode(bm_normal);
f += 1;
