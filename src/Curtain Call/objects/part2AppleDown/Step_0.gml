if((bbox_top > room_height) || (bbox_right) < 0 || (bbox_left > room_width) || y < -room_height) instance_destroy();
direction += curve;

if(slow_down) {
	speed = max(speed - (4/13), 5);
	image_xscale = min(image_xscale + ((growth_target_size - start_size) / 13), growth_target_size);
	image_yscale = min(image_yscale + ((growth_target_size - start_size) / 13), growth_target_size);
}
