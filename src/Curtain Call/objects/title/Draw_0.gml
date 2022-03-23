draw_sprite_ext(sSquareBlend, 0, 0, 0, 25, 19, 0, c_black, 1);
shader_set(shRadius);
shader_set_uniform_f(uniform_center, room_width / 2, room_height / 2);
shader_set_uniform_f(uniform_radius, 110);
shader_set_uniform_f(uniform_edgesize, 170);
draw_sprite_ext(sSquareBlend, 0, 0, 0, 25, 19, 0, make_colour_hsv(150, 219, 128), 1);
for(var _y = -(f mod 7); _y < room_height; _y += 7) {
	draw_sprite_ext(sPixelBlend, 0, 0, _y, room_width, 4, 0, c_black, 0.04);
}
shader_reset();

var r = 540 - EaseOutQuad(min(f, 42), 0, 305, 42);
for(var i = 0; i < 20; i += 1) {
	draw_sprite_ext(sAppleBlend, 0, (room_width / 2) + lengthdir_x(r, d + i * 360 / 20), (room_height / 2) + lengthdir_y(r, d + i * 360 / 20), 1, 1, 0, make_colour_hsv((d + i * 255 / 20) mod 255, 255, 255), 1);
}

draw_sprite_ext(sTitleText, 0, room_width / 2, (room_height / 2) - sin(f / 38) * 14, 1, 1, 0, make_colour_hsv((d * 0.75 + 65) mod 255, 44, 255), 1);
