if(f mod 6 == 0) {
	var a = instance_create(random_range(__view_get(e__VW.XView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), part5BottomUpApple);
	a.gravity_direction = 90;
	a.gravity = 0.11;
	a.speed = random_range(1.5, 3);
	a.direction = 90 + random_range(-35, 35);
	a.image_blend = make_colour_hsv((a.direction / 2.5 + 224) mod 255, 150 + (a.speed * 4), 240);
}

f += 1;
