speed += 0.1;

var a;
repeat(choose(2, 3)) {
	a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_blend = image_blend;
	a.direction = random(360);
	a.speed = random_range(2, 4);
	a.depth = -3;
}
