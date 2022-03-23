/// @description: P5 burst + TL spawner creation
instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), part5TLSpawner);

var angle = random(360);
var a;
var col = make_colour_hsv(random(255), 219, 255);
repeat(30) {
    a = instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), part5BurstApple);
    a.direction = angle;
    a.image_blend = col;
    angle += 360/30;
}
