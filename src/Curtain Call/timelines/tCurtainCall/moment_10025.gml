/// @description: P9 indicators 3
var a = instance_create(p9x - 200, 0, part9Bar);
a.image_angle = 270;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
a = instance_create(p9x + 200, 0, part9Bar);
a.image_angle = 270;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
a = instance_create(0, p9y - 200, part9Bar);
a.image_xscale = 25;
a.image_blend = make_colour_hsv(28, 255, 255);
a = instance_create(0, p9y + 200, part9Bar);
a.image_xscale = 25;
a.image_blend = make_colour_hsv(28, 255, 255);
