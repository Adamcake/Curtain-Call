var a;
if(f < 25) {
 	r = f + EaseOutQuad(f, 0, 42, 25);
} else if(p == 0) {
	r = f + 42;
} else if(p == 1) {
	r += 6.1;
}


for(var i = 0; i < 30; i += 1) {
	apples[i].x = x + lengthdir_x(r, dir + (i * 360 / 30));
	apples[i].y = y + lengthdir_y(r, dir + (i * 360 / 30));
	if(vspeed > -6.1) {
		a = instance_create(apples[i].x, apples[i].y, trail);
		a.image_blend = apples[i].image_blend;
		a.sprite_index = sAppleBlendPure;
		a.depth = -3;
	}
}

if(p == 0) {
	dir -= 2;
} else if(p == 1) {
	dir -= 4.32;
}
f += 1;
