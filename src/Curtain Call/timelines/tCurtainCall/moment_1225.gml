/// @description: P2 left-wall wave
var a;
for(var i = 0; i < room_height; i+=30) {
    a = instance_create(-12, i, part2AppleWall);
    a.direction = 0;
    a.alarm[0] = (i/30) + 1;
}

