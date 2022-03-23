var f50 = f mod 50;
var a;
if(f < 200) {
	if(f50 == 0 || f50 == 12 || f50 == 25 || f50 == 37) {
		var i;
		for(i = 0; i <= room_width; i += 13) {
			if((i / 13) mod 6 == t) {
			    a = instance_create(i, room_height, part3end6Killer);
			} else {
			    a = instance_create(i, room_height, part3end6Fake);
			}
			a.direction = 90;
			a.speed = 7;
		}
		t = (t + 3) mod 6;
	}
} else {
	if(f == 200) {
		if(!instance_exists(player)) {
			instance_destroy();
			exit;
		}
	}
	repeat(3) {
		if(choose(false, false, true, true, true)) {
			a = instance_create(room_width - 10, 10, part3end6Fake);
		} else {
			a = instance_create(room_width - 10, 10, part3end6Killer);
		}
		a.direction = random(360);
		a.speed = 8;
	}
}

f += 1;
