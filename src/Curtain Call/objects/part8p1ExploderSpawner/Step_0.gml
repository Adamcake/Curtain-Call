if(f mod 8 == 0) {
	instance_create(random(room_width), -29, part8p1Exploder);
}

repeat(3) {
	var a = instance_create(random(room_width), -8, part8p1GhostApple);
	a.image_alpha = 0.2;
	a.direction = random_range(185, 355);
	a.speed = random_range(18, 21);
}

f += 1;
