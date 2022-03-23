/// @description: P4 start pulling stars to center
var a;
with(part4p2StarController) {
	a = instance_create(x, y, part2WooshEff);
	a.depth = -8;
	a.image_alpha = 0.2;
}
instance_destroy(part4p2StarController);
instance_destroy(part4p1Nayu);
instance_create(room_width/2, room_height/2, part4p2StarGravityController);
