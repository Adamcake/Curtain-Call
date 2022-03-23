/// @description: P10 spawn spinners
for(var i = 0; i < 8; i += 1) {
	var a = instance_create(room_width / 2, room_height / 2, part10BigSpinner);
	a.direction = (360/16) + i * 360 / 8;
	a.speed = 15;
	a.friction = 0.425;
}
