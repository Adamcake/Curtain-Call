/// @description: P3 stutter-burst
with(part3end3big) {
    var angle = random(360);
    repeat(12) {
        var a = instance_create(x, y, part3end3small);
        a.image_xscale = 1.2;
        a.image_yscale = 1.2;
        a.direction = angle;
        a.s = random_range(12, 45);
        a.image_blend = image_blend;
        a.x += lengthdir_x(a.s, a.direction);
        a.y += lengthdir_y(a.s, a.direction);
        angle += 360/12;
    }
    instance_destroy();
}

