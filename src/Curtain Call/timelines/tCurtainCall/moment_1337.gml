/// @description: P2 left-wall wave
var a;
var j = (room_height / 30) + 1;
for(var i = 0; i < room_height; i+=30) {
    a = instance_create(-12, i, part2AppleWall);
    a.alarm[0] = j;
    j -= 1;
    a.direction = 0;
}

