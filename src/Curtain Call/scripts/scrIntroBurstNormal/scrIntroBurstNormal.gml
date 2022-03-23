function scrIntroBurstNormal() {
	var a;
	var col = make_colour_hsv(random_range(133, 145), 255, 255);
	for(var i = 0; i < 8; i++) {
	    a = instance_create(intro.circlers[i].x, intro.circlers[i].y, introWrapper);
	    a.direction = point_direction(player.x, player.y, intro.circlers[i].x, intro.circlers[i].y);
	    a.speed = 9;
	    a.image_blend = col;
		a.image_alpha = 0.6;
		a.friction = 0.5;
		a.alarm[4] = 6;
	}
}
