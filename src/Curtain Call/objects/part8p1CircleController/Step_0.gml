var a, i;

if(f <= 19) {
	r = EaseOutBack(f, 0, tr, 19);
}

for(i = 0; i < applecount; i += 1) {
	apples[i].x = x + lengthdir_x(r, angle + (i * 360 / applecount));
	apples[i].y = y + lengthdir_y(r, angle + (i * 360 / applecount));
}

if(y > room_height) {
	if(p2r == -1) {
		speed = 0;
		gravity = 0;
		t = 0;
		rotspeed *= 1.6;
		p2r = r;
	}
}

if(ending == 1) {
	r -= t;
	t = max(t - 0.4, 0);
}

if(ending == 2) {
	r = p2r + EaseOutCubic(min(p2f, 12), 0, 98, 12);
	if(instance_exists(player) && p2f > 3) {
		a = instance_create(x, y, part8p1GroupApple);
		a.speed = 22.5;
		a.direction = point_direction(x, y, player.x, player.y);
		a.image_blend = make_colour_hsv((f * 5) mod 255, 140, 255);
	}
	p2f += 1;
}

if(ending = 3) {
	rotspeed = 0;
	r -= 13.5;
	for(i = 0; i < applecount; i += 1) {
		with(instance_create(apples[i].x, apples[i].y, trail)) {
			direction = random(360);
			speed = random_range(1, 4);
			sprite_index = sAppleBlendPure;
			image_blend = other.apples[i].image_blend;
		}
	}
	
	if(abs(r) > 740) {
		for(i = 0; i < applecount; i += 1) {
			instance_destroy(apples[i]);
		}
		instance_destroy();
	}
}

if(f >= 3 && !ending) {
	repeat(4) {
		a = random(360);
		with(instance_create(x + lengthdir_x(r, a), y + lengthdir_y(r, a), trail)) {
			sprite_index = sAppleBlendPure;
			image_blend = make_colour_hsv((((a - (other.angle mod 360)) + 360) mod 360) * 255 / 360, 180, 255);
			direction = point_direction(x, y, other.x, other.y);
			speed = 5;
			scaleDownSpeed = 0;
			fadeSpeed = 1/12;
			friction = -0.1;
			image_xscale = 0.85;
			image_yscale = 0.85;
		}
	}
}

angle += rotspeed;
f += 1;
