depth = -4;
dir = 90;
f = 0;
r = 0;
p = 0;

for(var i = 0; i < 30; i += 1) {
	apples[i] = instance_create(x, y, part4p3TopCircleApple);
	apples[i].image_blend = 12738180 + (3686268 * (i & 1)); // deal with it
}
