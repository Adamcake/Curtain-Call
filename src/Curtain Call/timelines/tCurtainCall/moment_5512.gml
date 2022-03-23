/// @description: P5 purple circle
if(instance_exists(part5Follow)) {
	instance_create(part5Follow.x, part5Follow.y, part5PurpleCircleController);
	instance_destroy(part5Follow);
}
