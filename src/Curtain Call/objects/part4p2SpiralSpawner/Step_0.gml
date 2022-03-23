hue = (hue + 5) mod 255;
image_blend = make_colour_hsv(hue, 220, 240);

var a = instance_create(x, y, part4p2SpiralApple);
a.image_blend = image_blend;
//a.direction = dir;

dir += 360 / 7;
direction += curve;
