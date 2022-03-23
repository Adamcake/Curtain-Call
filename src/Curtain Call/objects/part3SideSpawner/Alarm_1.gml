var a = instance_create(room_width+8, random(660), part3SidewaysApple);
a.image_blend = make_colour_hsv(170, 185, 255);
a.lightcol = make_colour_hsv(170, 139, 255);
a.direction = random_range(c, -c) + 180;
a.speed = 6;
alarm[1] = 8;

