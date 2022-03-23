/// @description: P5 solidify explosion fruits
with(part5ViewWrapper) {
	alarm[0] = 11 + clamp(((__view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)) - y) * 36 / __view_get(e__VW.HView, 0), 1, 36);
}
