/// @description: P4 spinny lines from top
var a, i;
a = instance_create(192, 160, part4p1LineController);
a.direction = 330;
a.speed = 12;
a.curve = -3.7;
a.rotate = -1;
for(i = 0; i < 12; i += 1) {
	a.apples[i] = p4p1hline.top[i];
	a.apples[i].startoffset = a.apples[i].y - a.y;
}
a = instance_create(608, 160, part4p1LineController);
a.direction = 210;
a.speed = 12;
a.curve = 3.7;
a.rotate = 1;
for(i = 0; i < 12; i += 1) {
	a.apples[i] = p4p1hline.top[i + 13];
	a.apples[i].startoffset = a.apples[i].y - a.y;
}
with(p4p1hline.top[12]) {
	xstart = x;
	ystart = y;
	instance_change(part4p1FallMarker, true);
}
instance_destroy(part4p1HLineController);
