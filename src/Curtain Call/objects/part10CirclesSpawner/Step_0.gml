var a, d, _d, i;
if(f mod 25 == 0 && !ending) {
	d = random(360);
	for(i = 0; i < 14; i += 1) {
		_d = d + 360 * i / 14;
		a = instance_create(x + lengthdir_x(668, _d), y + lengthdir_y(668, _d), part10CirclesApple);
		a.direction = _d + 180;
		a.speed = 6.8;
		a.alarm[0] = ceil(668 * 2 / a.speed);
	}
}

if(ending) {
	with(part10HoloApple) {
		var dist = point_distance(other.x, other.y, x, y);
		var dir = point_direction(other.x, other.y, x, y);
		x = other.x + lengthdir_x(dist - min(sqrt(dist) * 0.875, 35), dir + dist / 30);
		y = other.y + lengthdir_y(dist - min(sqrt(dist) * 0.875, 35), dir + dist / 30);
	}
}

f += 1;
