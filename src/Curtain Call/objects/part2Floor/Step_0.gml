if(move) {
	y -= 4;
	if(y <= room_height - 32) {
		y = room_height - 32;
		move = false;
	}
	with(player) {
		if(bbox_bottom >= other.y) {
			y = other.y - 9;
		}
	}
}
