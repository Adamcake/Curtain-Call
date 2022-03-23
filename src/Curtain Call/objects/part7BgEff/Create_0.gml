var a;
depth = 6;
repeat(450) {
	a = instance_create(random(room_width), random(room_height), part7BgParticle);
	a.direction = random(360);
	a.speed = random_range(2, 4);
}
