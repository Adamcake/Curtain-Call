/// @description: P3 stars + stutter-bursts move away
var px = player.x;
var py = player.y;
with(part3end3small) {
    direction = point_direction(px, py, x, y);
    speed = 25;
}
with(part3end4star1) {
    direction = point_direction(px, py, x, y);
    speed = 25;
    curve = 0;
}
with(part3end4star2) {
    direction = point_direction(px, py, x, y);
    speed = 25;
    curve = 0;
}
with(part3end4star3) {
    direction = point_direction(px, py, x, y);
    speed = 25;
    curve = 0;
}

instance_create(random_range(100, room_width-100), random_range(10, 80), part3end5BurstStarter);

