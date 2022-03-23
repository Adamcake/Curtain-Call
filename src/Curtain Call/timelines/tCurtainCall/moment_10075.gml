/// @description: P9 diagonal indicators 3
var a = instance_create((room_width / 2) + p9x - p9r + 148, (room_height / 2) - p9x - p9r - 148, part9Bar);
a.image_angle = 315;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
var a = instance_create((room_width / 2) + p9x - p9r - 148, (room_height / 2) - p9x - p9r + 148, part9Bar);
a.image_angle = 315;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
a = instance_create((room_width / 2) + p9y + p9r + 148, (room_height / 2) + p9y - p9r + 148, part9Bar);
a.image_angle = 225;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
a = instance_create((room_width / 2) + p9y + p9r - 148, (room_height / 2) + p9y - p9r - 148, part9Bar);
a.image_angle = 225;
a.image_xscale = 19;
a.image_blend = make_colour_hsv(28, 255, 255);
