if(instance_exists(player)) {
	direction = point_direction(x, y, player.x, player.y);
} else {
	speed = 0;
}
