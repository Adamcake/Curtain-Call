/// @description: P7 rain attack
with(part7Apple) {
	direction = point_direction(player.x, player.y, x, y);
	speed = 19;
}
instance_destroy(part7VerticalSpawner);
instance_create(room_width / 2, 100, part7RainSpawner);
