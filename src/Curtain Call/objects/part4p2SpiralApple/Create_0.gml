depth = -4;
if(instance_exists(player)) {
	speed = 2.5;
	friction = -0.2;
	direction = point_direction(x, y, player.x, player.y);
}
