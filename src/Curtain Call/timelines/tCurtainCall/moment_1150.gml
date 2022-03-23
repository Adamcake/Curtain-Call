/// @description: Intro's ending animation
var breakpoint = player.x;
with(introWrapper) {
    ending = true;
    if(x < breakpoint) {
        alarm[2] = max((breakpoint - x) / 30, 1); // max to prevent it being set to 0
    }
    else {
        alarm[3] = max(x / 30, 1);
    }
}
with(introWall) {
    if(left) {
        alarm[0] = max((breakpoint - x) / 30, 1); // max to prevent it being set to 0
    }
    else {
        alarm[1] = max(x / 30, 1);
    }
}

intro.ending = 1;
intro.alarm[0] = 12;

instance_create(0, room_height, part2Floor);
