var hue;

applesperline = 10;
d = 90;
r = 125;
f = 0;
shoot = false;
shootiframes = 0;
rotspeed = 5.5;

for(i = 0; i < 5; i += 1) {
	_x[i] = x + lengthdir_x(r, d + (72 * i));
	_y[i] = y + lengthdir_y(r, d + (72 * i));
}

var i, j;
for(i = 0; i < applesperline; i += 1) {
	for(j = 0; j < 5; j += 1) {
		line[j][i] = instance_create(x, y, part8p2StarApple);
		hue = point_direction(x, y, _x[(j * 2) mod 5] + (_x[(j * 2 + 2) mod 5] - _x[(j * 2) mod 5]) * i / applesperline, _y[(j * 2) mod 5] + (_y[(j * 2 + 2) mod 5] - _y[(j * 2) mod 5]) * i / applesperline) * 255 / 360;
		line[j][i].image_blend = make_colour_hsv(hue, 195, 255);
	}
}
