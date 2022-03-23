/// @description: P9 indicators 1
instance_destroy(part8p3SwirlController);
instance_destroy(part8p3SwirlApple);
p9x = (room_width / 2) - 30 + random(60);
p9y = (room_height / 2) - 30 + random(60);
var a = instance_create(p9x, 0, part9Bar);
a.image_angle = 270;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(8, 255, 255);
a = instance_create(0, p9y, part9Bar);
a.image_xscale = 25;
a.image_blend = make_colour_hsv(8, 255, 255);
