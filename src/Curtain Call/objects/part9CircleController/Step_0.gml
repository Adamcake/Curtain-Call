var a, a2, i;

angle += spinspeed;

if(f <= 50) {
	r = 520 - EaseOutQuad(f, 0, 270, 50);
	lightalpha += 0.004;
}

if(ending) {
	if(shrinkspeed < 0.509) {
		shrinkspeed = min(shrinkspeed + (0.509 / 12), 0.51);
	}
	r -= shrinkspeed;
	
	if(endf < 12) {
		camerascalespeed -= 1/2750;
	}
	if(endf >= 75) {
		camerascalespeed -= 1/18400;
	}
	camerascale += camerascalespeed;
	
	__view_set(e__VW.XView, 0, (room_width / 2) - (room_width * camerascale / 2));
	__view_set(e__VW.YView, 0, (room_height / 2) - (room_height * camerascale / 2));
	__view_set(e__VW.WView, 0, room_width * camerascale);
	__view_set(e__VW.HView, 0, room_height * camerascale);
	
	if(endf mod 25 == 12 or endf mod 25 == 24) {
		for(i = 0; i < applecount; i += 1) {
			a = apples[(i mod applecount)];
	        a2 = instance_create(a.x, a.y, part9CircleTrail);
	        a2.direction = point_direction(x, y, a2.x, a2.y);
	        a2.speed = 10;
	        a2.image_blend = a.image_blend;
	        a2.depth = -1;
		}
	}
	
	endf += 1;
}

if(shrinkspeed > 0 && !ending) {
	r -= shrinkspeed;
	shrinkspeed -= 2 / 50;
	
	for(i = 0; i < applecount; i++) {
        var a = instance_create(apples[i].x, apples[i].y, trail);
        a.sprite_index = apples[i].sprite_index;
        a.image_blend = apples[i].image_blend;
        a.image_xscale = apples[i].image_xscale;
        a.image_yscale = apples[i].image_yscale;
        a.speed = 20;
        a.direction = point_direction(x, y, a.x, a.y);
		a.fadeSpeed = 0.015;
		a.scaleDownSpeed = 1/15;
    }
}

for(i = 0; i < applecount; i++) {
    d = angle + i * 360 / applecount;
    apples[i].x = x + lengthdir_x(r, d);
    apples[i].y = y + lengthdir_y(r, d);
}

f += 1;
