/// @description: P5 burst
var angle = random(360);
var a;
var col = make_colour_hsv(random(255), 219, 255);
repeat(24) {
    a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0), part5BurstApple);
    a.direction = angle;
    a.image_blend = col;
	a.speed = 12;
    angle += 360/24;
}
