perline = 10;
f = 0;
turn = 0;
depth = -4;
p[1, 7] = 0; // I think this pre-allocates stuff
for(var i = 0; i < perline * 4; i += 1) {
	apples1[i] = instance_create(x, y, part4p3TopCircleApple);
	apples1[i].image_blend = make_colour_hsv(22 + (39 * (i & 1)), 153, 255);
	apples2[i] = instance_create(x, y, part4p3TopCircleApple);
	apples2[i].image_blend = apples1[i].image_blend;
}

// square 1's target angle is 45, target len 96 in 32 frames
// square 2's target angle is 0, target len 47.625 in 47 frames
spinspeed = 3.5;
shrinkspeed = 25;
len1 = (shrinkspeed * (20 + 6.5)) + 96;
angle1 = 45 - spinspeed * (20 + 6.5);
len2 = shrinkspeed * (35 + 6.5) + 47.625;
angle2 = -spinspeed * (35 + 6.5);
l2_offset = 0;
sf = 0;
