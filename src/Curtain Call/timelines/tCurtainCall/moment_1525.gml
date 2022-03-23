/// @description: P2 right-wall wave
var a;
for(var i = 0; i < room_height; i+=30) {
    a = instance_create(room_width+12, i, part2AppleWall);
    a.direction = 180;
    a.alarm[0] = (i/30) + 1;
}

