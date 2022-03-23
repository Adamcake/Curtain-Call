c = 360 / (1850 / 2);
speed = point_distance(x, y, room_width / 2, room_height / 2) / 23;
direction = point_direction(x, y, room_width / 2, room_height / 2) - (point_distance(x, y, room_width / 2, room_height / 2) * c / speed);
alarm[0] = 32;
