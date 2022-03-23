/// @description: P2 burst + right spawner creation
var angle = random(360);
var a;
var col = make_colour_hsv(random(255), 255, 255);
with(part2AppleCurve) { instance_destroy(); }
repeat(20) {
    a = instance_create(room_width, room_height/2, part2AppleCurve);
    a.direction = angle;
    a.image_blend = col;
    angle += 360/20;
}
instance_create(room_width, room_height/2, part2RightSpawner);
