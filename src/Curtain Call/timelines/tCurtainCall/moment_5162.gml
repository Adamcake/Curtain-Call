/// @description: P4 BTB grey triple-shot
var a, i, d;
with(part4p3LinearApple) {
	d = random(360);
	for(i = 0; i < 3; i += 1) {
		a = instance_create(x, y, part4p3LinearApple);
		a.image_blend = image_blend;
		a.direction = d + i * 360 / 3;
		a.speed = 2;
	}
	instance_destroy();
}