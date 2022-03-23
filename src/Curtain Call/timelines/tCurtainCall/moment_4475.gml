/// @description: make big X move outwards
var a;
with(part4p3DoubleLineApple) {
	a = instance_create(x, y, part4p3LinearApple);
	a.direction = direction;
	a.speed = -20;
	a.friction = -1/6;
	a.image_blend = image_blend;
	instance_destroy();
}
