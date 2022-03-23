/// @description: P4 spawn BTB intro
with(blockPlayerAnim) { instance_destroy(); }
var a = instance_create(200, 0, part4p4MSpawner);
a.direction = 300;
a.speed = 14;
