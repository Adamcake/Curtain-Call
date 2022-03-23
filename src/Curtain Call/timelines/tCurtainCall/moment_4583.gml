/// @description: P4 pattern - sideways wall
var a, i;
for(i = 64; i < room_height; i += 64) {
	a = instance_create(0, i, part4Apple);
	a.direction = 0;
	a.speed = 14.5;
}
