/// @description: P6 shoot lines from miku
with(p6miku) {
	sprite_index = sDoruShoot;
	image_index = 0;
	alarm[1] = 19;
	with(instance_create(x, y, part6LineSpawner)) {
		direction = 120;
		speed = 22;
		line = 1;
	}
	with(instance_create(x, y, part6LineSpawner)) {
		direction = 60;
		speed = 22;
		line = 2;
	}
	with(instance_create(x, y, part6LineSpawner)) {
		direction = 0;
		speed = 22;
		line = 3;
	}
	with(instance_create(x, y, part6LineSpawner)) {
		direction = 180;
		speed = 22;
		line = 3;
	}
}
instance_create(0, 0, part6ScreenBump);
