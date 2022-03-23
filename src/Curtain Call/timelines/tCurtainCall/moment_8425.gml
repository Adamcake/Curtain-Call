/// @description: P8 spawn circle 3
p8c3 = instance_create(room_width - 128, room_height / 2, part8p1CircleController);
p8c3.tr = 75;

for(var i = 0; i < 36; i += 1) {
	var a = instance_create(room_width - 128, room_height / 2, part8p1GhostApple);
	a.direction = i * 10;
	a.speed = random_range(15, 25);
	a.image_alpha = 0.35;
}
