var a, i, dir;
if(instance_exists(player)) {
	dir = point_direction(p4p3big.x, p4p3big.y, player.x, player.y);
	for(i = 0; i < 10; i += 1) {
		a = instance_create(p4p3big.x, p4p3big.y, part4p3LinearApple);
		a.direction = dir;
		a.speed = 14.5;
		dir += 360 / 10;
	}
}
