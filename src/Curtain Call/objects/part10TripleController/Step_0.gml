var a, i;

if(f < 50) {
	d += 8.2;
	r = sin(f * 2 / 50) * 90;
} else if(f <= 100) {
	if(f == 50) {
		speed = 0;
		sy = y;
		sr = r;
	}
	
	d -= 13;
	r = sr - EaseOutQuad(f - 50, 0, sr, 50);
	y = sy + EaseOutQuad(f - 50, 0, room_height - 70 - sy, 50);
}

for(i = 0; i < 3; i += 1) {
	apples[i].x = x + lengthdir_x(r, d + i * 360 / 3);
	apples[i].y = y + lengthdir_y(r, d + i * 360 / 3);
	
	if(f <= 44 && f mod 2) {
		a = instance_create(apples[i].x, apples[i].y, part10AccelApple);
		a.alarm[0] = 50 - (f / 2);
	}
	
	if(f > 50) {
		a = instance_create(apples[i].x, apples[i].y, trail);
		a.sprite_index = sApple;
		a.image_xscale = 2;
		a.image_yscale = 2;
		a.scaleDownSpeed *= 1.7;
		a.depth = -1;
	}
}

f += 1;
