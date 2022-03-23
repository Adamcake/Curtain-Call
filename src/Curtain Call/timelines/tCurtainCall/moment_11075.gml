/// @description: P10 move big spinners
instance_destroy(part10Spawner1);
var b = false;
with(part10BigSpinner) {
	if b {
		direction += 180;
	}
	speed = point_distance(x, y, room_width / 2, room_height / 2) / 17;
	friction = 1 / 3.25;
	b = !b;
}
