var a;
if((f mod 25) mod 6 == 0 && f mod 25 != 24) {
	hue = (hue + (255 / 4)) mod 255;
}

image_blend = make_colour_hsv(hue, 250, 250);
with(part4p3LinearApple) {
	image_blend = other.image_blend;
}
with(part4p3DoubleLineApple) {
	image_blend = other.image_blend;
}
with(part4p3TopSpawner) {
	image_blend = other.image_blend;
}
with(part4p3TopCircleApple) {
	image_blend = other.image_blend;
}

with(part4p3LinearApple) {
	a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_blend = make_colour_hsv(colour_get_hue(image_blend), 120, 250);
	a.image_alpha = 0.7;
	a.fadeSpeed = 0.7/6;
	a.direction = random(360);
	a.speed = random_range(2, 4);
}
with(part4p3DoubleLineApple) {
	a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_blend = make_colour_hsv(colour_get_hue(image_blend), 120, 250);
	a.image_alpha = 0.7;
	a.fadeSpeed = 0.7/6;
	a.direction = random(360);
	a.speed = random_range(2, 4);
}
with(part4p3TopCircleApple) {
	a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_blend = make_colour_hsv(colour_get_hue(image_blend), 120, 250);
	a.image_alpha = 0.7;
	a.fadeSpeed = 0.7/6;
	a.direction = random(360);
	a.speed = random_range(2, 4);
}

hue = (hue + 1) mod 255;
f += 1;
