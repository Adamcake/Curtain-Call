/// @description: P9 stutter, spawn star
with(part9StutterApple) {
    x += lengthdir_x(s, direction);
    y += lengthdir_y(s, direction);
}

star(room_width / 2, room_height / 2, part9BoundStarApple, 25, 0, 1000);
