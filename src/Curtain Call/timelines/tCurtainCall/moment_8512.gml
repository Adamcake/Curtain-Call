/// @description: P8 throw third circle
with(p8c3) {
	for(var i = 0; i < applecount; i += 1) {
		with(apples[i]) {
			instance_change(part8p1Apple, false);
			speed = random_range(14, 18);
			direction = random_range(-10, 45);
			gravity = 0.6;
		}
	}
	instance_destroy();
}
