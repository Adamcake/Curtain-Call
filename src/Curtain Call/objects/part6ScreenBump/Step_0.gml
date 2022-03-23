if(f == 12) {
	__view_set(e__VW.XView, 0, 0);
	__view_set(e__VW.YView, 0, 0);
	__view_set(e__VW.WView, 0, room_width);
	__view_set(e__VW.HView, 0, room_height);
	instance_destroy();
} else {
	var factor = 1 - EaseOutQuad(f, 0, 1, 12);
	__view_set(e__VW.XView, 0, room_width * 0.1 * factor);
	__view_set(e__VW.YView, 0, room_height * 0.1 * factor);
	__view_set(e__VW.WView, 0, room_width - (room_width * 0.2 * factor));
	__view_set(e__VW.HView, 0, room_height - (room_height * 0.2 * factor));
}

f += 1;
