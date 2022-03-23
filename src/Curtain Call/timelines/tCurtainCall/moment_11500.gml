/// @description: P10 end credits and attack
instance_create(0, 0, part10CameraSlideLeft);
with(part10CirclesApple) {
	xs = x;
	ys = y;
	speed = 0;
	instance_change(part10HoloApple, true);
}
part10CirclesSpawner.ending = true;
