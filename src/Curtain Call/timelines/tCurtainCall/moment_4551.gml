var a, d = 25, _y = self.p4safe * 128 + 48;
repeat(5) {
	a = instance_create(400, _y, part4Apple);
	a.direction = d;
	a.speed = 5;
	d += 360 / 5;
}
