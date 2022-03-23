/// @description: P7 red apples fly away, stop spawns
with(part7Apple) {
	if(red) {
		direction = point_direction(player.x, player.y, x, y);
		speed = 16;
	}
}
instance_destroy(part7SpinSpawner);
