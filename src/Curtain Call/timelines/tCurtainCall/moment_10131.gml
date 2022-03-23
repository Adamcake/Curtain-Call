/// @description: P9 stutter-bursts from center
instance_destroy(part9ExploderController);
with(part9StillExploder) {
    var angle = random(360);
    repeat(9) {
        var a = instance_create(x, y, part9StutterApple);
        a.direction = angle;
        a.s = random_range(18, 35);
        a.image_blend = image_blend;
        a.x += lengthdir_x(a.s, a.direction);
        a.y += lengthdir_y(a.s, a.direction);
        angle += 360/9;
    }
    instance_destroy();
}
