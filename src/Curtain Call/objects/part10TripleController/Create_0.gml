r = 0;
d = random(360);
f = 0;
direction = 90;
speed = 4;

for(var i = 0; i < 3; i += 1) {
	apples[i] = instance_create(x, y, part10TripleApple);
}
