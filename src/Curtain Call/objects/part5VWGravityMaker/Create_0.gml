x = __view_get(e__VW.XView, 0) - 32;
y = __view_get(e__VW.YView, 0) - __view_get(e__VW.HView, 0);
image_xscale = (__view_get(e__VW.WView, 0) + 64) / 32;
image_yscale = __view_get(e__VW.HView, 0) / 32;
direction = 270;
speed = image_yscale;
alarm[0] = 50;

with(part5ViewWrapper2) {
	if(bbox_bottom < __view_get(e__VW.YView, 0)) {
		instance_destroy();
	}
}
