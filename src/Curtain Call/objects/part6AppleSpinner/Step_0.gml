f += 1;

with(part6Apple) {
	x = other.x + lengthdir_x(spindist + other.f * 2.5, spindir + other.f * 3);
	y = other.y + lengthdir_y(spindist + other.f * 2.5, spindir + other.f * 3);
	direction = point_direction(xprevious, yprevious, x, y);
	prevspeed = point_distance(xprevious, yprevious, x, y);
}
