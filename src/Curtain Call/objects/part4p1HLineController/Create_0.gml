for(var i = 0; i < 25; i += 1) {
	top[i] = instance_create(16 + (32 * i), -16, part4p1HLineApple);	
	bottom[i] = instance_create(16 + (32 * i), room_height + 16, part4p1HLineApple);
}
f = 0;
bottom_offset = 0;
do_jump = true;
