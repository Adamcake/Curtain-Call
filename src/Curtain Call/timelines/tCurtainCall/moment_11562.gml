/// @description: P10 ending burst
var a;
repeat(250) {
	a = instance_create(part10CirclesSpawner.x, part10CirclesSpawner.y, part10FakeApple);
	a.direction = random(360);
	a.speed = random_range(3, 20);
	a.friction = sqrt(24 - a.speed) / 40;
}
instance_destroy(part10CirclesSpawner);
instance_destroy(part10CirclesApple);
