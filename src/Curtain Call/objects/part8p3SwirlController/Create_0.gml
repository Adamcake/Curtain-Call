f = 0;
tr = 275;
m = 1.0;
shrink1 = false;
s1f = 0;

var a, d, i, angle;
angle = random(360);
for(i = 0; i < 12; i += 1) {
	a = instance_create(x, y, part8p3Shadow);
	a.direction = angle + i * 360 / 12;
	a.speed = 20;
	a.curve = 7.4;
	a = instance_create(x, y, part8p3Shadow);
	a.direction = angle + 360 / 24 + i * 360 / 12;
	a.speed = 20;
	a.curve = -7.4;
}

repeat(40) {
	a = instance_create(x, y, part8p1GhostApple);
	a.direction = random(360);
	a.speed = random_range(21, 28);
	a.image_alpha = 0.225;
}

with(part8p3WrapApple) {
	instance_change(part8p3SwirlApple, true);
	sdist = point_distance(other.x, other.y, x, y);
	dir = point_direction(other.x, other.y, x, y);
	if(sdist < other.tr) {
		tdist = other.tr + EaseLinear(other.tr - sdist, 0, 20, other.tr) + random(50);
	} else {
		tdist = sdist + random(25);
	}
	dist = sdist;
}

for(i = 0; i < 60; i += 1) {
	d = i * 360 / 60 + random(8);
	a = instance_create(x + lengthdir_x(505, d), y + lengthdir_y(505, d), part8p3SwirlApple);
	a.sdist = 505;
	a.dir = d;
	a.tdist = tr + 40 + random(120);
	a.dist = a.sdist;
	a.image_blend = make_colour_hsv(i * 255 / 60, 195, 255);
}
