/// @description: P9 diagonal indicators 1
p9x = random_range(-21, 21);
p9y = random_range(-21, 21);
p9r = sqrt(sqr(part9CircleController.r) / 2);
var a = instance_create((room_width / 2) + p9x - p9r, (room_height / 2) - p9x - p9r, part9Bar);
a.image_angle = 315;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(8, 255, 255);
a = instance_create((room_width / 2) + p9y + p9r, (room_height / 2) + p9y - p9r, part9Bar);
a.image_angle = 225;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(8, 255, 255);
