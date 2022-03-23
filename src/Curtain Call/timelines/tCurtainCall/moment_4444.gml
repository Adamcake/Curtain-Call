/// @description: P4 pattern - top aim
var a = instance_create(player.x, 0, part4p2aimed);
a.image_blend = make_colour_hsv(random_range(130, 150), 220, 255);
a.direction = 270;
a.speed = 15;
