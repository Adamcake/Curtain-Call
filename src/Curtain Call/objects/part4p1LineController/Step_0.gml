var a, i;

for(i = 0; i < 12; i += 1) {
	apples[i].x = x + lengthdir_x((i * 32) - 180, angle);
	apples[i].y = y + lengthdir_y((i * 32) - 180, angle);
	apples[i].direction = angle - 90;
	apples[i].speed = apples[i].startoffset * offsetfactor;
}

if(f == 0) {
	curvesign = sign(curve);	
	rotatesign = sign(rotate);
}

if(f <= 12) {
	rotate = rotatesign * EaseInOutQuad(f, 1, 10, 12);
}

if(f == 25) {
	curve = 0;
	friction = speed / 13;
	rotateaccel = -rotate / 13;
}

if(f == 37) {
	rotate = -10 * rotatesign;
	rotateaccel = 0;
	friction = 0;
	direction = 90 + (25 * curvesign);
	gravity = 0.19;
	speed = 3.4;
}

direction += curve;
rotate += rotateaccel;
angle += rotate;
offsetfactor = max(offsetfactor - (1 / 13), 0);
f += 1;
