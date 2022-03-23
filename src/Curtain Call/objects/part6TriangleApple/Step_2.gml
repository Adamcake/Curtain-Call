if(stop) {
	spin = false;
	stop = false;
	direction = point_direction(x, y, xprevious, yprevious) + 3.5;
	speed = point_distance(xprevious, yprevious, x, y);
}

if((bbox_left > room_width || bbox_right < 0 || bbox_top > room_height || bbox_bottom < 0) && ending) {
	instance_destroy();
}
	