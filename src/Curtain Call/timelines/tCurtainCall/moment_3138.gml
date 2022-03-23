/// @description: P3 aim + top burst
instance_create(random_range(100, room_width-100), random_range(10, 80), part3end5BurstStarter);
var a = instance_create(room_width, player.y, part3end5aimed);
a.direction = 180;
a.speed = 18;
