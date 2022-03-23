var a;
if(f mod 6 == 0) {
	a = instance_create(random(room_width * 1.15), -8, part7Apple);
	a.image_blend = col1;
	a.direction = 265 + random(10);
	a.speed = spawnspeed;
	a.curve = 0.775;
	a.red = true;
	a = instance_create(random(room_width * 1.15), -8, part7Apple);
	a.image_blend = col2;
	a.direction = 265 + random(10);
	a.speed = spawnspeed;
	a.curve = -0.775;
	a.red = false;
}

f += 1;
