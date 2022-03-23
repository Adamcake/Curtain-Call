/// @description: P4 big wrapping burst
with(part4p2BoundAppleBig) {
	instance_change(part4p2BigFastApple, true);
	direction = point_direction(other.p4p2bound.x, other.p4p2bound.y, x, y);
}
instance_destroy(p4p2bound);
