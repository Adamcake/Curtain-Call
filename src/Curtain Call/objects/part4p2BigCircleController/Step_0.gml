if(f >= 50 && f < 100) {
	rotspeed -= 0.015;
	growspeed -= 0.06;
} else if(f == 100) {
	rotspeed = 0.25;
	growspeed = 0;
}

if(ending) {
	endf += 1;
	r -= 2 - ((clamp(endf, 75, 87) - 75) * 0.7 / 12);
	if(r <= 0) {
		for(i = 0; i < applecount; i += 1) {
			instance_destroy(apples1[i]);
			instance_destroy(apples2[i]);
		}
		instance_destroy();
		exit;
	}
}

var i;
for(i = 0; i < applecount; i += 1) {
	apples1[i].x = x + lengthdir_x(r, d1 + (i * 360 / applecount));
	apples1[i].y = y + lengthdir_y(r, d1 + (i * 360 / applecount));
	apples2[i].x = x + lengthdir_x(r, d2 + (i * 360 / applecount));
	apples2[i].y = y + lengthdir_y(r, d2 + (i * 360 / applecount));
}

f += 1;
r += growspeed;
d1 += rotspeed;
d2 -= rotspeed;
