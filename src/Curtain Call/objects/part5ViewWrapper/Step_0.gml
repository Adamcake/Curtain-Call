if(!d) {
	if(bbox_right < __view_get(e__VW.XView, 0)) {
		x += __view_get(e__VW.WView, 0) + (bbox_right - bbox_left);// - abs(hspeed);
	} else if(bbox_left >= __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)) {
		x -= __view_get(e__VW.WView, 0) + (bbox_right - bbox_left);// - abs(hspeed);
	}

	if(bbox_bottom < __view_get(e__VW.YView, 0)) {
		y += __view_get(e__VW.HView, 0) + (bbox_bottom - bbox_top);// - abs(vspeed);
	} else if(bbox_top >= __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)) {
		y -= __view_get(e__VW.HView, 0) + (bbox_bottom - bbox_top);// - abs(vspeed);
	}
}
