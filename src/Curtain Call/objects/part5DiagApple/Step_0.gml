if((bbox_top > __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)) || (bbox_right < __view_get(e__VW.XView, 0)) || (bbox_left > __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)) || (bbox_bottom < __view_get(e__VW.YView, 0))) instance_destroy();

if(slow_down) {
	speed = max(speed - (4/13), 5);
	image_xscale = min(image_xscale + ((growth_target_size - start_size) / 13), growth_target_size);
	image_yscale = min(image_yscale + ((growth_target_size - start_size) / 13), growth_target_size);
}
