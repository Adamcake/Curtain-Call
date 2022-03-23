if(f < 44) {
	var scale = startscale + EaseOutCubic(f, 0, 1 - startscale, 44);
	__view_set(e__VW.XView, 0, (room_width / 2) - (room_width * scale / 2));
	__view_set(e__VW.YView, 0, (room_height / 2) - (room_height * scale / 2));
	__view_set(e__VW.WView, 0, room_width * scale);
	__view_set(e__VW.HView, 0, room_height * scale);
	__view_set(e__VW.Angle, 0, sin(f * pi / 44) * 35);
} else {
	__view_set(e__VW.XView, 0, 0);
	__view_set(e__VW.YView, 0, 0);
	__view_set(e__VW.WView, 0, room_width);
	__view_set(e__VW.HView, 0, room_height);
	__view_set(e__VW.Angle, 0, 0);
	instance_destroy();
}

f += 1;
