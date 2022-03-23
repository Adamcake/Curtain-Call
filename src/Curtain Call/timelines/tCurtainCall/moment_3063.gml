/// @description: P3 aim + top burst
instance_create(random_range(100, room_width-100), random_range(10, 80), part3end5BurstStarter);
var a = instance_create(0, player.y, part3end5aimed);
a.direction = 0;
a.speed = 18;
