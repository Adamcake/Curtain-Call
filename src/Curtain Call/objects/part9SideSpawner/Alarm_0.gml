var a = instance_create(-8, random(660), part9SidewaysApple);
a.image_blend = make_colour_hsv(0, 204, 255);
a.lightcol = make_colour_hsv(0, 170, 255);
a.direction = random_range(c, -c);
a.speed = 9;
alarm[0] = 10;
