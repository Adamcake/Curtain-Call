f += 1;
if(f == 25) {
	with(block) {
		y = ystart + other.dist;
	}
	
	with(part7BgEff) {
		y = room_height / 2;
	}
	
	with(player) {
		while(place_meeting(x, y, block)) {
			if(global.god) {
				x = room_width / 2;
				y = room_height / 2;
				xprevious = x;
				yprevious = y;
			} else {
				y -= sign(y - (224 + EaseOutQuad(other.f, 0, other.dist, 25)));
			}
		}
		yprevious = y;
		
		// I'm pretty sure the player can't be outside the box, but just in case they somehow manage it...
		if(bbox_left < 336 || bbox_right > 464 || bbox_top < 240 || bbox_bottom > 368) {
			x = room_width / 2;
			y = room_height / 2;
			xprevious = x;
			yprevious = y;
		}
	}
	instance_destroy();
} else {
	with(block) {
		y += EaseOutQuad(other.f, 0, other.dist, 25) - EaseOutQuad(other.f - 1, 0, other.dist, 25);
	}
	with(part7BgEff) {
		y += EaseOutQuad(other.f, 0, other.dist, 25) - EaseOutQuad(other.f - 1, 0, other.dist, 25);
	}
	with(player) {
		y += EaseOutQuad(other.f, 0, other.dist, 25) - EaseOutQuad(other.f - 1, 0, other.dist, 25);
		while(place_meeting(x, y, block)) {
			y -= sign(y - (224 + EaseOutQuad(other.f, 0, other.dist, 25)));
		}
		yprevious = y;
	}
}
