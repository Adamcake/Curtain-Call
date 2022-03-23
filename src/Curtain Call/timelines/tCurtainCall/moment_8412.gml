/// @description: P8 spawn circle 2
p8c2 = instance_create(room_width / 2, room_height / 2, part8p1CircleController);

for(var i = 0; i < 36; i += 1) {
	var a = instance_create(room_width / 2, room_height / 2, part8p1GhostApple);
	a.direction = i * 10;
	a.speed = random_range(15, 25);
	a.image_alpha = 0.35;
}
