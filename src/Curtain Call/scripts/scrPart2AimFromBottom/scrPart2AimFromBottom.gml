function scrPart2AimFromBottom() {
	var a = instance_create(player.x, __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) + 12, part2Aimed);
	a.image_blend = make_colour_rgb(190, 190, 190);
	a.speed = 16;
	a.direction = 90;
	a.image_xscale = 1.2;
	a.image_yscale = 1.2;
	a.image_angle = random(360);
}
