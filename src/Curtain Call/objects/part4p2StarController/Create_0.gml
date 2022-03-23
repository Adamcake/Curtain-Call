applesperline = 10;
ytarget = 304;
direction = 270;
d = 1;
r = 160;
f = 0;

var i;
for(i = 0; i < applesperline; i += 1) {
	line1[i] = instance_create(x, y, part4p2StarApple);
	line2[i] = instance_create(x, y, part4p2StarApple);
	line3[i] = instance_create(x, y, part4p2StarApple);
	line4[i] = instance_create(x, y, part4p2StarApple);
	line5[i] = instance_create(x, y, part4p2StarApple);
}
