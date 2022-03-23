var a, d;
if(f mod 7 == 0) {
	d = 230 + f;
	a = instance_create(random_range((room_width / 2) - 288, (room_width / 2) + 288), 16, part10LineApple);
	a.speed = 7.5;
	a.direction = d;
	a = instance_create(random_range((room_width / 2) - 288, (room_width / 2) + 288), room_height - 16, part10LineApple);
	a.speed = 7.5;
	a.direction = d;
	a = instance_create((room_width / 2) - 288, random_range(16, room_height - 16), part10LineApple);
	a.speed = 7.5;
	a.direction = d;
	a = instance_create((room_width / 2) + 288, random_range(16, room_height - 16), part10LineApple);
	a.speed = 7.5;
	a.direction = d;
}

if(f >= 6) {
	with(part10BigSpinner) {
		a = instance_create(x, y, trail);
		a.sprite_index = sAppleBlendPure;
		a.image_xscale = image_xscale;
		a.image_yscale = image_yscale;
		a.image_blend = c_red;
		a.direction = random(360);
		a.scaleDownSpeed *= 1.5;
		a.speed = random_range(4, 6);
		a.image_alpha = 0.45;
		a.image_angle = image_angle;
		a.depth = -1;
	}
}

f += 1;
