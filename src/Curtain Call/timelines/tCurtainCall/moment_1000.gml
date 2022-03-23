/// @description: Red walls spawn
for(var i = 0; i < room_height + 40; i += 40) {
    var a = instance_create(-12, i, introWall);
    a.image_xscale = 1.5;
    a.image_yscale = 1.5;
    a.direction = 0;
    a.speed = 1.7;
    a.image_blend = make_colour_rgb(240, 62, 70);
    a.left = true;
    a = instance_create(room_width + 12, i, introWall);
    a.image_xscale = 1.5;
    a.image_yscale = 1.5;
    a.direction = 180;
    a.speed = 1.7;
    a.image_blend = make_colour_rgb(240, 62, 70);
    a.left = false;
}
