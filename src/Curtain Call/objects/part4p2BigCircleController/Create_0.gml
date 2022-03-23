f = 0;
d1 = 0;
d2 = 3;
r = 0;
rotspeed = 1;
applecount = 30;
growspeed = 3;
ending = false;
endf = 0;

var i;
for(i = 0; i < applecount; i += 1) {
	apples1[i] = instance_create(x, y, part4p2BigCircleApple);
	apples1[i].image_blend = make_colour_hsv(i * 255 / applecount, 240, 245);
	apples2[i] = instance_create(x, y, part4p2BigCircleApple);
	apples2[i].image_blend = make_colour_hsv((i * 255 / applecount + 90) mod 255, 240, 245);
}
