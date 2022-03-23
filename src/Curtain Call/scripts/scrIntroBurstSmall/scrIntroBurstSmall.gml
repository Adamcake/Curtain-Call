function scrIntroBurstSmall() {
	var a;
	var col = make_colour_hsv(random_range(148, 162), 255, 255);
	var d = irandom(9);
	for(var i = 0; i < 8; i++) {
	    a = instance_create(intro.circlers[i].x, intro.circlers[i].y, introWrapper);
	    a.direction = point_direction(player.x, player.y, intro.circlers[i].x, intro.circlers[i].y);
	    a.speed = 6;
	    a.image_blend = col;
	    a.image_xscale = 0.6;
	    a.image_yscale = 0.6;
		a.image_alpha = 0.5;
	    a.depth = 2;
		a.alarm[5] = 6;
		
		if(i == d) {
			a.dieoutside = true;
		}
	}
}
