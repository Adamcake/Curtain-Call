/// @description: P4 stop center line spawner
instance_destroy(part4p1CenterLineSpawner);
with(part4p1CircleController) {
	fast = false;
	slowdown = true;
	slowdownstart = f;
}
