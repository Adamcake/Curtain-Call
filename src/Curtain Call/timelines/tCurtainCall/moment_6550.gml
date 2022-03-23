/// @description: P2 big falling apple #2
var a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 80, 85, part2BigFaller);
a.direction = 180;
a.image_angle = 90;
a.gravity_direction = 180;
a.speed = 3.75;
a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 80, room_height - 85, part2BigFaller);
a.direction = 180;
a.image_angle = 90;
a.gravity_direction = 180;
a.speed = 3.75;
