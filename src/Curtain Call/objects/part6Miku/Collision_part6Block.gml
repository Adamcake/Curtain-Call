if(falling) {
	falling = false;
	gravity = 0;
	speed = 0;
	sprite_index = sDoruLand;
	image_index = 0;
	image_speed = 1;
	alarm[1] = 4;
	y -= (bbox_bottom - other.bbox_top) + 1;
}

if(run && turn_iframes <= 0) {
	image_xscale = -image_xscale;
	turn_iframes = 20;
}
