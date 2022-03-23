var a, i;
if(f mod 3 == 0) {
	for(i = 0; i < 3; i += 1) {
		a = instance_create(x, y, part4p2TriWallApple);
		a.direction = direction + (i * 360 / 3);
		a.speed = 17;
	}
}

direction -= 0.55;
f += 1;
