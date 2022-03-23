/// @description: P5 aim aimed circle
if(instance_exists(player)) {
	with(part5PurpleAim) {
		curve = 0;
		direction = point_direction(xstart, ystart, player.x, player.y);
		speed = 9;
	}
}
