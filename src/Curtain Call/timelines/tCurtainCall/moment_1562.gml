/// @description: P2 circles 2
with(part2AppleDown) {
	if(group == 1) {
		var a;
		var dir = random(360);
		repeat(7) {
			a = instance_create(x, y, part2AppleDown);
			a.image_xscale = 1.0;
			a.image_yscale = 1.0;
			a.direction = dir;
			a.speed = 5;
			a.curve = -360 / 29;
			a.group = 2;
			a.image_blend = image_blend;
			dir += 360/7;
		}
		instance_destroy();
	}
}
