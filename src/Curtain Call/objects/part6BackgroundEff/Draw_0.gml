draw_self();
var _x, _y;
var offset = f mod 64;
for(_y = -offset; _y < room_height; _y += 64) {
	for(_x = -offset; _x < room_width; _x += 64) {
		draw_sprite_ext(sDoruppiGrid, 0, _x, _y, 1, 1, 0, c_white, 0.15 * alpha);
	}
}
f += 1;
