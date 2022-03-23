/// @description: P9 aim + top burst
instance_create(random_range(100, room_width-100), random_range(10, 80), part9BurstStarter);
var a = instance_create(room_width, player.y, part9SideAimed);
a.direction = 180;
a.speed = 18;
