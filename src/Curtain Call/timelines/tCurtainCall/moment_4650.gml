/// @description: P4 make square spin upwards
if(instance_exists(player)) {
	p4p3squares.direction = 90;
	p4p3squares.speed = 4.3;
	p4p3squares.sf = p4p3squares.f;
	if(player.x < room_width / 2) {
		p4p3squares.turn = 1;
	} else {
		p4p3squares.turn = -1;
	}
	p4p3squares.alarm[0] = 22;
	p4p3squares.alarm[1] = 26;
}
