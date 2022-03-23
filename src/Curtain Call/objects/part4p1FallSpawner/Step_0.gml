if(vspeed > 9) {
	vspeed = 9;	
}

if(f > 10 && f < 40) {
	var a;
	repeat(choose(3, 4)) {
		var angle = random(360);
		var dist = random_range(r, r + 16);
		var aimx = x + lengthdir_x(dist, angle);
		var aimy = y + lengthdir_y(dist, angle);
		var dir = choose(angle + 90, angle - 90);
		var _x = aimx - lengthdir_x(800, dir);
		var _y = aimy - lengthdir_y(800, dir);
		a = instance_create(_x, _y, part4p1FallBoundaryApple);
		a.alarm[0] = 20;
		a.speed = 40;
		a.direction = dir;
		a.image_blend = make_colour_hsv(hue, 255, 255);
	}
}

hue = (hue + (255 / 36)) mod 255;
f += 1;
