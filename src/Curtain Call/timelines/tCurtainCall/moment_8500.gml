/// @description: P8 throw first circle
with(p8c1) {
	for(var i = 0; i < applecount; i += 1) {
		with(apples[i]) {
			instance_change(part8p1Apple, false);
			speed = random_range(14, 18);
			direction = random_range(135, 190);
			gravity = 0.6;
		}
	}
	instance_destroy();
}
