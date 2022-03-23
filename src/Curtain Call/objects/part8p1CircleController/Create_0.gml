depth = -4;
angle = random(360);
r = 0;
applecount = 30;
f = 0;
ending = false;
t = 15;
tr = 110;
rotspeed = 3;
p2f = 0;
p2r = -1;

for(var i = 0; i < applecount; i += 1) {
	apples[i] = instance_create(x, y, part8p1CircleApple);
	apples[i].image_blend = make_colour_hsv(i * 255 / applecount, 190, 255); 
}
