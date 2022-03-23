/// @description: P9 super hexagon thing
var f, a, i, r; // Coincidentally, these four letters spell what I think this avoidance isn't.

with(part9CircleController) {
    r = floor(random(applecount / 2));
    repeat(2) {
        for(i = r; i < (applecount/5) + r; i++) {
            a = apples[(i mod applecount)];
            f = instance_create(a.x, a.y, part9InwardApple);
            f.direction = point_direction(x, y, f.x, f.y);
            f.speed = 7;
            f.gravity_direction = f.direction + 180;
            f.gravity = 0.208;
            f.image_blend = a.image_blend;
            a.image_xscale = 1.4;
            a.image_yscale = 1.4;
        }
        r += (applecount / 2);
    }
}
