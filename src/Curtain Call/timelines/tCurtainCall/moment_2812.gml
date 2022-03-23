/// @description: P3 orange lines burst
instance_create(0, 0, part3ScreenBump);

var angle = random(360);
repeat(18) {
    var a = instance_create(room_width-20, 20, part3end1apple);
    a.direction = angle;
    a.speed = 5;
    a.image_xscale = 1.2;
    a.image_yscale = 1.2;
    a.image_blend = make_colour_hsv(25, 255, 240);
    a = instance_create(room_width-20, 20, part3end1bar);
    a.image_angle = angle;
    a.image_xscale = 50;
    a.image_blend = make_colour_hsv(25, 255, 240);
    angle += 360/18;
}

