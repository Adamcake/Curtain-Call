/// @description: P9 despawn killers
with(part9BoundStarApple) {
	repeat(choose(3, 4)) {
		a = instance_create(x, y, trail);
		a.sprite_index = sAppleBlend;
		a.image_blend = make_colour_hsv(random(255), 75, 230);
		a.direction = random(360);
		a.speed = random_range(3, 6);
		a.gravity = 0.4;
		a.depth = -1;
		a.image_xscale = 0.2;
		a.image_yscale = 0.2;
		a.scaleDownSpeed /= 5;
	}
	instance_destroy();
}
with(part9StutterApple) {
	repeat(choose(3, 4)) {
		a = instance_create(x, y, trail);
		a.sprite_index = sAppleBlend;
		a.image_blend = make_colour_hsv(random(255), 75, 230);
		a.direction = random(360);
		a.speed = random_range(3, 6);
		a.gravity = 0.4;
		a.depth = -1;
		a.image_xscale = 0.2;
		a.image_yscale = 0.2;
		a.scaleDownSpeed /= 5;
	}
	instance_destroy();
}
