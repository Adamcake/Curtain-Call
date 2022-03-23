var angle = random(360);
repeat(8) {
    var a = instance_create(x, y, part3end1apple);
    a.speed = 9;
    a.direction = angle;
    a.image_blend = image_blend;
    a = instance_create(x, y, part3end1apple);
    a.speed = 5;
    a.direction = angle + (360/32);
    a.image_blend = image_blend;
    angle += 360/8;
}
instance_destroy();

