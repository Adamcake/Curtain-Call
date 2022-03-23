/// @description: shoot spirals
alarm[1] = 7;
d += 37.2;
var a;
a = instance_create(x, y, part6Apple);
a.speed = 6;
a.direction = d;
a = instance_create(x, y, part6Apple);
a.speed = 6;
a.direction = d + 360 / 3;
a = instance_create(x, y, part6Apple);
a.speed = 6;
a.direction = d + 360 * 2 / 3;
