/// @description: P4 pattern - spawn markers
var a, i, _y = 176;
repeat(3) {
	for(i = 1; i <= 12; i += 1) {
	    a = instance_create(400, _y, part4p2RMarker);
	    a.direction = random(360);
	    a.speed = i;
		a.friction = i / 30;
	}
    _y += 128;
}