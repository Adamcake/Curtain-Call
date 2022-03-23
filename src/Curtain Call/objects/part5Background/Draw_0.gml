draw_rectangle_color(
	__view_get(e__VW.XView, 0),
	__view_get(e__VW.YView, 0),
	__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0),
	__view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0),
	col, col, col, col,
	false
);
draw_set_blend_mode(bm_add);
draw_sprite_ext(sBossCircleLight, 0, room_width - 250, 180, 2, 2, 0, c_white, lightalpha);
draw_sprite_ext(sBossCircleLight, 0, 250, room_height - 180, 2, 2, 0, c_white, lightalpha);
draw_set_blend_mode(bm_normal);
