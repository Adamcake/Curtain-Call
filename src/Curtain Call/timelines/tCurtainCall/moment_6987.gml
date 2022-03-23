/// @description: P6 spawn big triangle spawners
var a = instance_create(p6sm1.x, p6sm1.y, part6TriangleSpawner);
a.direction = point_direction(p6sm1.x, p6sm1.y, 160, 160);
a.speed = point_distance(p6sm1.x, p6sm1.y, 160, 160) / 13;
a.tx = 160;
a.ty = 160;
a.dir = 0;

a = instance_create(p6sm3.x, p6sm3.y, part6TriangleSpawner);
a.direction = point_direction(p6sm3.x, p6sm3.y, room_width - 160, 160);
a.speed = point_distance(p6sm3.x, p6sm3.y, room_width - 160, 160) / 13;
a.tx = room_width - 160;
a.ty = 160;
a.dir = 180;
