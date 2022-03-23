draw_set_blend_mode(bm_add);
with(part3SidewaysApple) {
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 1.0);
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 1.0);
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 0.55);
}

draw_set_blend_mode(bm_normal);
with(part3end6Fake) {
	draw_sprite_ext(sAppleBlendPure, 0, x, y, 1, 1, 0, image_blend, 1.0);
}
with(part3end6Killer) {
	draw_sprite_ext(sAppleBlendPure, 0, x, y, 1, 1, 0, image_blend, 1.0);
}
draw_self();

var dist, col;
draw_set_blend_mode(bm_subtract);
with(part3InwardApple) {
	dist = point_distance(part3CircleCenter.x, part3CircleCenter.y, x, y);
	if (dist < 220.0) {
		col = round((220.0 - dist) / 7.5);
		col = (col << 16) | (col << 8) | col;
		draw_sprite_ext(sprite_index, image_index, x - (dist / 15.0), y + (dist / 18.0), image_xscale * 0.95, image_yscale * 0.95, image_angle, col, 1.0);
	}
}
draw_set_blend_mode(bm_normal);

with(part3end6Killer) {
	if (point_distance(part3CircleController.x, part3CircleController.y, x, y) < part3CircleController.r) {
		draw_self();
	}
}