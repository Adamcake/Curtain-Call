direction += 0.6;

if(bbox_right < 32) {
	x += xstep;
} else if(bbox_left >= room_width - 32) {
	x -= xstep;
}

if(bbox_bottom < 32) {
	y += ystep;
} else if(bbox_top >= room_height - 32) {
	y -= ystep;
}
