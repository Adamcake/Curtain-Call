/// @description: P5 top wave
var a;
for(var i = __view_get(e__VW.XView, 0); i < __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0); i+=30) {
    a = instance_create(i, __view_get(e__VW.YView, 0) - 12, part5WaveApple);
    a.direction = 270;
    a.alarm[0] = max((i/30) + 3, 1);
}
