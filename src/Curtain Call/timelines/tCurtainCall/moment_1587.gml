/// @description: P2 middle outward burst #2
var a = instance_create(room_width/2, room_height/2, part2WooshEff);
with(part2AppleDown) {
    speed *= 1.5;
    //friction = -0.25;
	alarm[0] = 1;
	while(alarm[0] < 25 && point_distance(a.x, a.y, x + (hspeed * alarm[0]) + ((abs(friction) * dcos(direction) * alarm[0] * alarm[0]) / 2), y + (vspeed * alarm[0]) + ((abs(friction) * -dsin(direction) * alarm[0] * alarm[0]) / 2)) > a.r + (a.growSpeed * alarm[0])) {
		alarm[0] += 1;	
	}
}
