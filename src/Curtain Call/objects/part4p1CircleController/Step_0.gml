if(f < 13) {
	radius = EaseOutQuad(f, 0, tr, 13);	
} else if(f == 13) {
	radius = tr;	
}

if(fast) {
	radius = tr - EaseOutBack(clamp(f - faststart, 0, 18), 0, tr * 0.25, 18);
	if(f - faststart < 18) {
		spinspeed += 0.15;
	}
}

if(slowdown) {
	if(f - slowdownstart < 25) {
		spinspeed -= (18 * 0.15) / 25;
	} else if(f - slowdownstart == 25) {
		spinspeed = 2;	
	}
}

for(var i = 0; i < 20; i += 1) {
	apples[i].x = x + lengthdir_x(radius, angle + (i * 360 / 20));
	apples[i].y = y + lengthdir_y(radius, angle + (i * 360 / 20));
	apples[i].image_blend = make_colour_hsv((f * (200 / 255)) mod 255, 230 + (25 * dsin(f + (i * 180 / 20))), 255);
}

if(grow) {
	radius += min((f - growstart) / 2, 3);
	if(f - growstart < 97) {
		spinspeed += (f - growstart) * 2 / 450;
	} else {
		radius += (f - growstart - 97) / 6;	
	}
}

angle += spinspeed;
f += 1;
