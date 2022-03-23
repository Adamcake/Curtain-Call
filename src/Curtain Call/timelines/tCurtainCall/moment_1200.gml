/// @description: P2 burst + top spawner creation
var angle = random(360);
var a;
var col = make_colour_hsv(random(255), 255, 255);
repeat(20) {
    a = instance_create(room_width/2, 0, part2AppleCurve);
    a.direction = angle;
    a.image_blend = col;
    angle += 360/20;
}
instance_create(room_width/2, 0, part2TopSpawner);
