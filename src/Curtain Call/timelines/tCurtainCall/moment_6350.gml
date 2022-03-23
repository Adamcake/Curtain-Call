/// @description: P5 diag slowdown 2, circles 1
with(part5BurstApple) {
    col = image_blend;
    image_blend = make_color_rgb(100, 100, 100);
    speed = -2;
}

with(part5DiagApple) {
	if(group == 1) {
		slow_down = true;	
	} else {
		var a;
		var dir = random(360);
		repeat(7) {
			a = instance_create(x, y, part2AppleDown);
			a.image_xscale = 1.0;
			a.image_yscale = 1.0;
			a.direction = dir;
			a.speed = 5;
			a.curve = 360 / 29;
			a.group = 2;
			a.image_blend = image_blend;
			dir += 360/7;
		}
		instance_destroy();
	}
}
