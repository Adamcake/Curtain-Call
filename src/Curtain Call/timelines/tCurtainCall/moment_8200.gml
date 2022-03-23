/// @description: P7 delayed burst
var a;
var c = make_colour_hsv(4, 210, 255);
repeat(30) {
	a = instance_create(random(room_width), random(100), part7DelayedApple);
	a.image_blend = c;
	a.alarm[0] = 12;
}
