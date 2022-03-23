if(instance_exists(player) && !run) {
	if(player.x < x - 32) {
		image_xscale = -1;
	} else if(player.x > x + 32) {
		image_xscale = 1;
	}
}

if(run) {
	x += image_xscale * 3.5;
}

if(shoot && !shootframes) {
	var a = instance_create(x, y, part6Apple);
	a.direction = random(360);
	a.speed = shotspeed;
	shootframes = choose(2, 3);
}

shootframes -= 1;
turn_iframes -= 1;
