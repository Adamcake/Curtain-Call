var dir, i;

if(f < 44) {
	r = EaseOutQuad(min(f, 38), 0, 70, 38);
} else {
	r = 70 - EaseInQuad(min(f - 44, 18), 0, 70, 18);
}

if(f > 37) {
	r2 = 500 - EaseOutQuad(f - 37, 0, 440, 62);
}

for(i = 0; i < count; i += 1) {
	dir = d + i * 360 / count;
	apples1[i].x = x + lengthdir_x(r, dir);
	apples1[i].y = y + lengthdir_y(r, dir);
	apples2[i].x = x + lengthdir_x(r2, dir);
	apples2[i].y = y + lengthdir_y(r2, dir);
	
	if(f >= 62) {
		apples1[i].image_xscale = 0.7 + EaseOutQuad(min(f - 62, 12), 0, 0.8, 12);
		apples1[i].image_yscale = apples1[i].image_xscale;
	}
}

d += 2;
f += 1;
