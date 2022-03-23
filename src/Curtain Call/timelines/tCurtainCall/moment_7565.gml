/// @description: P7 kill player if outside box
with(player) {
	if(place_meeting(x, y, block) || x < 304 || y < 128 || x > 496 || y > 320) {
		if(global.god) {
			x = room_width / 2;
			y = room_height / 2;
			xprevious = x;
			yprevious = y;
		} else {
			die();
		}
	}
}
