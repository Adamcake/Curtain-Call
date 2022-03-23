function scrPart3CircleShootout() {
	with(part3CircleController) {
	    for(var i = 0; i < applecount; i++) {
	        var a = apples[(i mod applecount)];
	        var f = instance_create(a.x, a.y, part3end6ShootoutApple);
	        f.direction = point_direction(x, y, f.x, f.y);
	        f.speed = 10;
	        f.sprite_index = a.sprite_index;
	        f.image_blend = a.image_blend;
	        f.image_xscale = a.image_xscale;
	        f.image_yscale = a.image_yscale;
	        f.depth = -1;
	    }
	}



}
