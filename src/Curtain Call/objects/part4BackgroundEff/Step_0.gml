var a;
if(f >= 12) {
	repeat(4) {
	    a = instance_create(random(room_width), random(room_height), part4BackgroundFruitEff);
		a.depth = 4;
	}
}
if(alpha < 1) {
    alpha += 0.09;
    if(alpha > 1) alpha = 1;
}
var blend = make_colour_hsv(hue, 150, 220 + (25 * cos(value_mod * pi / 12.5)));
hue += 256/200;
if (hue >= 256) hue -= 256;
value_mod += 1;

with(part4FakeBlockEff) {
    image_alpha = max(other.alpha, 0);
    image_blend = blend;
}

with(bossCircleShadow) {
	direction += d;
}

repeat(4) {
    a = instance_create(random(room_width), -4, trail);
    a.direction = random_range(265, 275);
    a.gravity_direction = 270;
    a.gravity = 0.16;
    a.speed = random_range(0.7, 1.8);
    a.sprite_index = sAppleBlendPure;
    a.image_xscale = 0.4;
    a.image_yscale = 0.4;
    a.scaleDownSpeed = 0.01;
	var h = 255 - (((a.x * (200 / 800)) + (f * 253)) mod 255);
    a.image_blend = make_colour_hsv(h, 255, 255);
}

repeat(4) {
    a = instance_create(random(room_width), room_height+4, trail);
    a.direction = random_range(85, 95);
    a.gravity_direction = 90;
    a.gravity = 0.16;
    a.speed = random_range(0.7, 2.2);
    a.sprite_index = sAppleBlendPure;
    a.image_xscale = 0.4;
    a.image_yscale = 0.4;
    a.scaleDownSpeed = 0.01;
    var h = 255 - (((a.x * (200 / 800)) + (f * 253)) mod 255);
    a.image_blend = make_colour_hsv(h, 255, 255);
}

f += 1;
