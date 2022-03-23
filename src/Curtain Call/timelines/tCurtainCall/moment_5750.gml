/// @description: P5 spawn aimed circle
var a, i;
with(part5Follow) {
	for(i = 0; i < 20; i += 1) {
		a = instance_create(x, y, part5PurpleAim);
		a.direction = direction + i * 360 / 20;
		a.speed = 2;
	}
	instance_destroy();
}
