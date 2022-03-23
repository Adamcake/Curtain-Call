with(part6Apple) {
	prevspeed = speed;
	speed = 0;
	spindir = point_direction(other.x, other.y, x, y);
	spindist = point_distance(other.x, other.y, x, y);
}

f = 0;
