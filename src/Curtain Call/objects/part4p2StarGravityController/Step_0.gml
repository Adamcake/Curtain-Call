var dir, dist, new_dist;
if(f < 30) {
	with(part4p2StarApple) {
		dir = point_direction(other.x, other.y, x, y);
		dist = point_distance(other.x, other.y, x, y);
		if(other.f < 12) {
			new_dist = d + (dist - d) * 0.902;
			ddiff = dist - new_dist;
		} else if(other.f < 25) {
			new_dist = dist - (ddiff * (1 - EaseOutQuad(other.f - 12, 0, 1, 13)));
			dstart = new_dist;
		} else {
			new_dist = dstart - EaseInQuad(other.f - 25, 0, dstart, 6);
		}
		x = other.x + lengthdir_x(new_dist, dir - ((dist / 35) + 2) * rotspeed);
		y = other.y + lengthdir_y(new_dist, dir - ((dist / 35) + 2) * rotspeed);
	}
} else {	
	instance_destroy(part4p2StarApple);
	instance_create(room_width / 2, room_height / 2, part4p2BigCircleController);
	instance_destroy();
}

f += 1;
