/// @description: P4 set spiral gravity
with(part4p2SpiralApple) {
	direction = point_direction(room_width / 2, room_height, x, y);
	speed = 6;
	gravity = 0.5;
}
instance_destroy(part4p2SpiralController);
