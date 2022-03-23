function scrPart2AimFromRight() {
	var a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 12, player.y, part2Aimed);
	a.image_blend = make_colour_rgb(190, 190, 190);
	a.speed = 18;
	a.direction = 180;
	a.image_xscale = 1.2;
	a.image_yscale = 1.2;
	a.image_angle = random(360);
}
