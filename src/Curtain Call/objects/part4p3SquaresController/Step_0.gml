var a, i, j;
if(f <= 100) {
	p[0, 0] = x + lengthdir_x(len1, angle1);
	p[0, 1] = y + lengthdir_y(len1, angle1);
	p[0, 2] = x + lengthdir_x(len1, angle1 + 90);
	p[0, 3] = y + lengthdir_y(len1, angle1 + 90);
	p[0, 4] = x + lengthdir_x(len1, angle1 + 180);
	p[0, 5] = y + lengthdir_y(len1, angle1 + 180);
	p[0, 6] = x + lengthdir_x(len1, angle1 + 270);
	p[0, 7] = y + lengthdir_y(len1, angle1 + 270);
}
p[1, 0] = x + lengthdir_x(len2 - l2_offset, angle2);
p[1, 1] = y + lengthdir_y(len2 - l2_offset, angle2);
p[1, 2] = x + lengthdir_x(len2 - l2_offset, angle2 + 90);
p[1, 3] = y + lengthdir_y(len2 - l2_offset, angle2 + 90);
p[1, 4] = x + lengthdir_x(len2 - l2_offset, angle2 + 180);
p[1, 5] = y + lengthdir_y(len2 - l2_offset, angle2 + 180);
p[1, 6] = x + lengthdir_x(len2 - l2_offset, angle2 + 270);
p[1, 7] = y + lengthdir_y(len2 - l2_offset, angle2 + 270);

for(i = 0; i < perline; i += 1) {
	for(j = 0; j < 4; j += 1) {
		a = apples1[j * perline + i];
		a.x = lerp(p[0, j * 2], p[0, (j * 2 + 2) mod 8], i / perline);
		a.y = lerp(p[0, j * 2 + 1], p[0, (j * 2 + 3) mod 8], i / perline);
		a = apples2[j * perline + i];
		a.x = lerp(p[1, j * 2], p[1, (j * 2 + 2) mod 8], i / perline);
		a.y = lerp(p[1, j * 2 + 1], p[1, (j * 2 + 3) mod 8], i / perline);
	}
}

angle1 += lerp(spinspeed, 0, clamp(f - 20, 0, 12) / 12);
angle2 += lerp(spinspeed, 0, clamp(f - 35, 0, 12) / 12);
if(sf != 0) {
	l2_offset = EaseOutQuad(min(f - sf, 25), 0, 55, 25);
}
if(turn != 0) {
	angle2 += (turn - EaseOutQuad(4.3 - speed, 0, turn, 4.3)) * 7.2;
}
if(f <= 32) {
	len1 -= lerp(shrinkspeed, 0, clamp(f - 20, 0, 12) / 12);
} else if(f <= 44) {
	len1 += f - 32;
} else {
	len1 += 12 - clamp(f - 44, 0, 12) * 0.2;
}
if(f <= 47) {
	len2 -= lerp(shrinkspeed, 0, clamp(f - 35, 0, 12) / 12);
} else if(f <= 59) {
	len2 += f - 47;
} else {
	len2 += 8 - EaseInOutQuad(clamp(f - 60, 0, 12), 0, 8, 12);
}

if(f == 100) {
	for(j = 0; j < perline * 4; j += 1) {
		apples1[i].visible = false;
	}
}

f += 1;
