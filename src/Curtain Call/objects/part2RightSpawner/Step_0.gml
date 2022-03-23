if(s mod m == 0 && !ending) {
    var a = instance_create(room_width+4, random(room_height), part2AppleDown);
    a.direction = random_range(180-20, 180+20);
    a.speed = 9;
}

event_inherited();

s++;
