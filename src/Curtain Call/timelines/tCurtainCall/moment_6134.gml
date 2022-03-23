/// @description: P5 bottom wave
var a;
var j = (__view_get(e__VW.WView, 0) / 30) + 3;
for(var i = __view_get(e__VW.XView, 0); i < __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0); i+=30) {
    a = instance_create(i, __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) + 12, part5WaveApple);
    a.direction = 90;
    a.alarm[0] = max(j, 1);
	j -= 1;
}
