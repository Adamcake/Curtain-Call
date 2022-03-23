var a;
if(f mod 3 == 0) {
	a = instance_create(x + lengthdir_x(dist, angle), y + lengthdir_y(dist, angle), part7Apple);
	a.image_blend = col1;
	a.direction = random(360);
	a.speed = 4.8;
	a.red = true;
	a = instance_create(x + lengthdir_x(dist, angle + 180), y + lengthdir_y(dist, angle + 180), part7Apple);
	a.image_blend = col2;
	a.direction = random(360);
	a.speed = 4.8;
	a.red = false;
}

angle += 1.2;
f += 1;
