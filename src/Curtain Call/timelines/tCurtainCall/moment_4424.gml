var a;
if(instance_exists(player)) {
	a = instance_create(room_width + 25, player.y, part4p3AimedExploder);
	a.direction = 180;
	a.speed = 10;
	a.image_blend = make_colour_hsv(55, 230, 250);
}
