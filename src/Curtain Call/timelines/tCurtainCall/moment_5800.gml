/// @description: P5 center burst + star spawn
var a, d, i;
d = random(360);
for(i = 0; i < 6; i += 1) {
	a = instance_create(room_width / 2, room_height / 2, part5CenterAim);
	a.direction = d + i * 360 / 6;
	a.speed = 1.5;
	a = instance_create(room_width / 2, room_height / 2, part3end1bar);
	a.image_angle = d + i * 360 / 6;
	a.image_xscale = 20;
}
instance_create(room_width / 2, room_height / 2, part5BoundStarController);
