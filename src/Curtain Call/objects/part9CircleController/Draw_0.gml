draw_set_blend_mode(bm_add);
with(part9SidewaysApple) {
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 1.0);
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 1.0);
	draw_sprite_ext(sBossCircleLight, 0, x, y, 1/7, 1/7, 0, lightcol, 0.55);
}
draw_set_blend_mode(bm_normal);
shader_set(shRadius);
shader_set_uniform_f(uniform_center, x, y);
shader_set_uniform_f(uniform_radius, (r - 9) / camerascale);
shader_set_uniform_f(uniform_edgesize, 18 / camerascale);
with(part8BgEff) { event_user(0); }
draw_set_blend_mode(bm_add);
draw_sprite_ext(sBossCircleLight, 0, x, y, 1.0, 1.0, 0.0, c_white, lightalpha);
draw_set_blend_mode(bm_normal);
with(bullet) { draw_self(); }
with(part8p3SwirlTrail) { draw_self(); }
with(part8p3SwirlApple) { draw_self(); }
with(part9Bar) { draw_self(); }
with(part9RadialApple) { draw_self(); }
with(part9SidewaysApple) { draw_self(); }
shader_reset();
with(part9CircleApple) { draw_self(); }
