if(bbox_bottom < 0) {
	y += room_height + bbox_bottom - bbox_top;
} else if(bbox_top >= room_height) {
	y -= room_height + bbox_bottom - bbox_top;
}

if(bbox_right < 0) {
	x += room_width + bbox_right - bbox_left;
} else if(bbox_left >= room_width) {
	x -= room_width + bbox_right - bbox_left;
}
