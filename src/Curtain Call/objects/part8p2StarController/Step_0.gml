var a, r360, i, j, tx, ty, f1, factor;
// _x and _y are not locals because that would mean they allocate every time this runs
for(i = 0; i < 5; i += 1) {
	_x[i] = x + lengthdir_x(r, d + (72 * i));
	_y[i] = y + lengthdir_y(r, d + (72 * i));
}

for(i = 0; i < applesperline; i += 1) {
	for(j = 0; j < 5; j += 1) {
		tx = _x[(j * 2) mod 5] + (_x[(j * 2 + 2) mod 5] - _x[(j * 2) mod 5]) * i / applesperline;
		ty = _y[(j * 2) mod 5] + (_y[(j * 2 + 2) mod 5] - _y[(j * 2) mod 5]) * i / applesperline;
		f1 = (j * applesperline + i) / (applesperline * 5 / 44);
		factor = EaseOutCubic(clamp(f - f1, 0, 12), 0, 1, 12);
		line[j][i].x = x + (tx - x) * factor;
		line[j][i].y = y + (ty - y) * factor;
	}
}

if(f >= 50) {
	d -= rotspeed;
	if(f <= 68) {
		r = 125 + EaseOutQuad(clamp(f - 50, 0, 18), 0, 60, 18);
	}
}

if(shoot) {
	if(shootiframes <= 0) {
		r360 = random(360);
		for(i = 0; i < 10; i += 1) {
			a = instance_create(x, y, part8p1Apple);
			a.direction = i * 360 / 10 + j;
			a.speed = 10;
			a.depth = -1;
			a.image_blend = make_colour_hsv((i * 255 / 10 + 180) mod 255, 200, 241);
		}
		for(i = 0; i < 30; i += 1) {
			a = instance_create(x, y, part8p1GhostApple);
			a.direction = i * 360 / 30 + r360;
			a.speed = random_range(15, 23);
			a.image_alpha = 0.22;
		}
		shootiframes += 12.5;
	} else {
		shootiframes -= 1;
	}
	
	if(f mod 3 == 0) {
		a = instance_create(x + random_range(-6, 6), y + random_range(-6, 6), part8p2GravityApple);
		a.image_blend = make_colour_hsv(random_range(10, 28), random_range(200, 250), 251);
		a.direction = random_range(30, 150);
		a.speed = random_range(2, 13);
	}
}

f += 1;
