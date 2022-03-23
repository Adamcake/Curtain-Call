/// @description: P8 move star up
with(part8p2StarController) {
	direction = 90;
	speed = 20;
	friction = 1.05;
}
instance_create(room_width / 2, room_height / 2, part8p2TiltEff);
