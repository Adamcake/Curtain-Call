var a, i, dir;
if(instance_exists(player)) {
	dir = 0;//point_direction(x, y, player.x, player.y);
	for(i = 0; i < 10; i += 1) {
		a = instance_create(x, y, part4p2ExplosionApple);
		a.direction = dir + (i * 360 / 10);
		a.speed = 13;
		
	}
	instance_destroy();
}
