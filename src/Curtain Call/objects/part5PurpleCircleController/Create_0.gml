var i;
f = 0;
r = 0;
r2 = 500;
d = random(360);
count = 100;
for(i = 0; i < count; i += 1) {
	apples1[i] = instance_create(x, y, part5PurpleCircleApple);
	apples2[i] = instance_create(x, y, part5PurpleCircleApple);
}
