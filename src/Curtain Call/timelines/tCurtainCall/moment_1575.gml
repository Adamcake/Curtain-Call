/// @description: P2 middle outward burst #1
with(part2AppleCurve) {
    image_blend = col;
    speed = 2;
    friction = -1;
    d = true;
}
with(part2AppleDown) {
    direction = point_direction(room_width/2, room_height/2, x, y);
    speed = 4;
    friction = -0.15;
	gravity = 0;
	curve = 0;
	slow_down = false;
}
instance_create(room_width/2, room_height/2, part2WooshEff);
