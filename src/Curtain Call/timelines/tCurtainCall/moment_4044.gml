/// @description: P4 spawn spiral spawners
var a;
a = instance_create(room_width + 10, 40, part4p2SpiralSpawner);
a.direction = 195;
a = instance_create(-10, room_height - 40, part4p2SpiralSpawner);
a.direction = 15;
