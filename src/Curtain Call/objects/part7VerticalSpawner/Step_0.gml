var a;
if(f mod 5 == 0 or f mod 5 == 2) {
	a = instance_create(random(room_width * 1.15), -8, part7Apple);
	a.image_blend = col1;
	a.direction = 270;
	a.speed = 6.6;
	a.red = true;
	a = instance_create(random(room_width * 1.15), room_height + 8, part7Apple);
	a.image_blend = col2;
	a.direction = 90;
	a.speed = 6.6;
	a.red = false;
}

f += 1;
