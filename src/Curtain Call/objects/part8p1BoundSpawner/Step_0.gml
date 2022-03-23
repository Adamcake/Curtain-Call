var a, b, d;
b = make_colour_hsv(20 + sin(f / 9) * 8, 250 - sin(f / 8) * 100, 242);
d = sin(f * pi / 88) * 59;

a = instance_create(0, room_height / 2, part8p1Apple);
a.direction = 90 - d;
a.speed = 22;
a.image_blend = b;
a = instance_create(0, room_height / 2, part8p1Apple);
a.direction = 270 + d;
a.speed = 22;
a.image_blend = b;

a = instance_create(room_width, room_height / 2, part8p1Apple);
a.direction = 90 + d;
a.speed = 22;
a.image_blend = b;
a = instance_create(room_width, room_height / 2, part8p1Apple);
a.direction = 270 - d;
a.speed = 22;
a.image_blend = b;

f += 1;

if(f == 88) {
	instance_destroy();
}
