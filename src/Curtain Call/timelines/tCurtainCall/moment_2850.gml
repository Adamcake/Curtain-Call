/// @description: P3 green burst from center
instance_create(0, 0, part3ScreenBump);

var angle = random(360);
repeat(10) {
    var a = instance_create(room_width/2, room_height/2, part3end1apple);
    a.direction = angle;
    a.speed = 3;
    a.image_blend = make_colour_hsv(70, 255, 240);
    a = instance_create(room_width/2, room_height/2, part3end1bar);
    a.image_angle = angle;
    a.image_xscale = 50;
    a.image_blend = make_colour_hsv(70, 255, 240);
    angle += 360/10;
}

