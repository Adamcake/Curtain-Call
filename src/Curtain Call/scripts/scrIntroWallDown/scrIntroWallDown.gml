function scrIntroWallDown() {
	var col = make_colour_hsv(random_range(-50, 50), 180, 255);
	var a;
	for(var i = -random(100); i < 900; i += 100) {
	    a = instance_create(i, -16, introAppleDown);
	    a.direction = 270;
	    a.speed = 7;
	    a.image_xscale = 1.5;
	    a.image_yscale = 1.5;
	    a.image_blend = col;
	}



}
