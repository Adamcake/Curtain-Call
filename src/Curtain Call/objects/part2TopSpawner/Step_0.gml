if(s mod 3 == 0 && !ending) {
    var a = instance_create(random(800), -4, part2AppleDown);
    a.direction = random_range(270-20, 270+20);
    a.speed = 9;
	a.group = group;
	group = !group;
}

s++;

event_inherited();
