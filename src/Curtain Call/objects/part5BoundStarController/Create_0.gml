applesperline = 25;
direction = 270;
r = 820;
rspeed = -1.8;
f = 0;
turnspeed = 684 / 150;

var i;
for(i = 0; i < applesperline; i += 1) {
	line1[i] = instance_create(x, y, part5BoundStarApple);
	line2[i] = instance_create(x, y, part5BoundStarApple);
	line3[i] = instance_create(x, y, part5BoundStarApple);
	line4[i] = instance_create(x, y, part5BoundStarApple);
	line5[i] = instance_create(x, y, part5BoundStarApple);
}
