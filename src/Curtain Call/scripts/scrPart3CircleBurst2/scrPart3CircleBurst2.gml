function scrPart3CircleBurst2() {
	with(part3CircleController) {
	    var r = floor(random(applecount / 2));
	    repeat(3) {
	        for(var i = r; i < (applecount/6) + r; i++) {
	            var a = apples[(i mod applecount)];
	            var f = instance_create(a.x, a.y, part3InwardApple);
	            f.direction = point_direction(part3CircleCenter.x, part3CircleCenter.y, f.x, f.y);
	            f.speed = 7;
	            f.gravity_direction = f.direction + 180;
	            f.gravity = 0.208;
	            f.image_blend = a.image_blend;
	            a.image_xscale = 1.4;
	            a.image_yscale = 1.4;
	        }
	        r += (applecount / 3);
	    }
	}



}
