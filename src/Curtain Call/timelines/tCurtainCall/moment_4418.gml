var a;
if(instance_exists(player)) {
	a = instance_create(player.x, -25, part4p3AimedExploder);
	a.direction = 270;
	a.speed = 10;
	a.image_blend = make_colour_hsv(55, 230, 250);
}
