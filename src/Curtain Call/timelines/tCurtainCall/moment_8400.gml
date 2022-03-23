/// @description: P8 spawn circle 1 + exploders
p8c1 = instance_create(128, room_height / 2, part8p1CircleController);
p8c1.tr = 75;
instance_create(0, 0, part8p1BoundSpawner);
instance_create(0, 0, part8p1ExploderSpawner);
instance_create(0, 0, part8p1FlashEff);

for(var i = 0; i < 36; i += 1) {
	var a = instance_create(128, room_height / 2, part8p1GhostApple);
	a.direction = i * 10;
	a.speed = random_range(15, 25);
	a.image_alpha = 0.35;
}
