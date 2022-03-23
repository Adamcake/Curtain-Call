/// @description: P5 left wave
var a;
for(var i = __view_get(e__VW.YView, 0); i < __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0); i+=30) {
    a = instance_create(__view_get(e__VW.XView, 0) - 12, i, part5WaveApple);
    a.direction = 0;
    a.alarm[0] = max((i/30) + 3, 1);
}
