if(instance_exists(player)) {
	if(player.x < 400) {
		tx = room_width / 2 - 32;
		l = true;
	} else {
		tx = room_width / 2 + 32;
		l = false;
	}
	ty = room_height / 2 - 32;
	twh = 32;
} else {
	instance_destroy();
}
factor = 1;
jump_factor = 0.305;
zoom_out_factor = 0.015;
offset_x = 0;
offset_y = 0;
f = 0;
