// Hi, good luck.
var a, i;
if(f < 18) {
	y = ystart - EaseOutBack(f, 0, 32, 18);
} else if(f == 18) {
	y = ystart - 32;
	if(instance_exists(player)) {
		p = 1;
	}
}

if(p == 0) {
	for(i = 0; i < 29; i += 1) {
		apples1[i].x = x + EaseOutQuad(min(f, 4 + abs(14 - i)), 0, (i - 14) * spacing, 4 + abs(14 - i));
		apples1[i].y = y;
		apples2[i].x = apples1[i].x;
		apples2[i].y = apples1[i].y;
	}
} else if(p == 1) {
	spacing = 28 + EaseOutBack(min(f - 18, 44), 0, 10.5, 44);
	var angle = EaseOutQuad(min(f - 18, 44), 0, 62, 44);
	for(i = 0; i < 29; i += 1) {
		apples1[i].x = x + lengthdir_x(spacing * (14 - i), angle);
		apples1[i].y = y + lengthdir_y(spacing * (14 - i), angle);
		apples2[i].x = x + lengthdir_x(spacing * (14 - i), -angle);
		apples2[i].y = y + lengthdir_y(spacing * (14 - i), -angle);
	}
	if(f - 18 == 44 && instance_exists(player)) {
		p = 2;
	}
} else if(p == 2) {
	for(i = 0; i < 29; i += 1) {
		apples1[i].direction = 180;
		apples1[i].speed = 5;
		apples1[i].friction = 1.5 / 12;
		apples2[i].direction = 0;
		apples2[i].speed = 5;
		apples2[i].friction = 1.5 / 12;
	}
	if(f == 72) {
		p = 3;
	}
} else if(p == 3) {
	for(i = 0; i < 29; i += 1) {
		apples1[i].direction = 0;
		apples1[i].speed = 16;
		apples2[i].direction = 180;
		apples2[i].speed = 16;
	}
	if(f == 85) {
		p3spacing = spacing;
		spacing = 32;
		for(i = 0; i < 29; i += 1) {
			apples1[i].xs = apples1[i].x;
			apples1[i].ys = apples1[i].y;
			apples2[i].xs = apples2[i].x;
			apples2[i].ys = apples2[i].y;
			apples1[i].xt = 640;
			apples1[i].yt = (room_height / 2) - ((i - 14) * spacing);
			apples2[i].xt = 160;
			apples2[i].yt = apples1[i].yt;
			apples1[i].sdir = point_direction(apples1[14].x, apples1[14].y, apples1[i].x, apples1[i].y);
			apples2[i].sdir = point_direction(apples2[14].x, apples2[14].y, apples2[i].x, apples2[i].y);
			apples1[i].alarm[0] = 1;
			apples2[i].alarm[0] = 1;
		}
		p3xdif = 0;
		p = 4;
	}
} else if(p == 4) {
	if(f <= 86 + 50) {
		if(f < 125) {
			apples1[14].x = apples1[14].xs + (EaseOutBack(f - 85, 0, abs(apples1[14].xt - apples1[14].xs), 50) * 18 / (EaseOutBack(2, 0, abs(apples1[14].xt - apples1[14].xs), 50) - EaseOutBack(1, 0, abs(apples1[14].xt - apples1[14].xs), 50)));
			apples2[14].x = apples2[14].xs - (EaseOutBack(f - 85, 0, abs(apples2[14].xt - apples2[14].xs), 50) * 18 / (EaseOutBack(2, 0, abs(apples2[14].xt - apples2[14].xs), 50) - EaseOutBack(1, 0, abs(apples2[14].xt - apples2[14].xs), 50)));
			p3xpdif = p3xdif;
			p3xdif = abs(apples1[14].x - apples1[14].xprevious);
		} else if(f == 125) {
			for(i = 0; i < 29; i += 1) {
				apples1[i].direction = 180;
				apples1[i].speed = p3xdif;
				apples1[i].friction = -p3xpdif * 0.2;
				apples2[i].direction = 0;
				apples2[i].speed = p3xdif;
				apples2[i].friction = -p3xpdif * 0.2;
			}
		}
	}
	a = EaseOutBack(min(f - 86, 50), 0, 270 - apples1[0].sdir, 50);
	var s;
	if(f - 86 < 8) {
		s = p3spacing - EaseOutQuad(f - 86, 0, p3spacing - 11.5, 7.5);
	} else {
		s = 11.5 + EaseInOutQuad(min(f - (86 + 7.5), 50 - 7.5), 0, spacing - 11.5, 50 - 7.5);
	}
	for(i = 0; i < 29; i += 1) {
		if(i == 14) { continue; }
		apples1[i].x = apples1[14].x + lengthdir_x(s * (i - 14), apples1[0].sdir + a);
		apples1[i].y = apples1[14].y + lengthdir_y(s * (i - 14), apples1[0].sdir + a);
		apples2[i].x = apples2[14].x + lengthdir_x(s * (i - 14), apples2[0].sdir - a);
		apples2[i].y = apples2[14].y + lengthdir_y(s * (i - 14), apples2[0].sdir - a);
	}
	if(f == 86 + 50 + 12 && instance_exists(player)) {
		p = 5;
	}
} else if(p == 5) {
	if(f == 86 + 50 + 1) {
		for(i = 0; i < 29; i += 1) {
			apples1[i].friction = abs(apples1[i].speed / 25);
			apples2[i].friction = abs(apples2[i].speed / 25);
		}
	} else if(f == 86 + 50 + 25) {
		for(i = 0; i < 29; i += 1) {
			apples1[i].friction = 0;
			apples2[i].friction = 0;
			apples1[i].gravity_direction = apples1[i].direction + 180;
			apples2[i].gravity_direction = apples2[i].direction + 180;
			apples1[i].gravity = apples1[i].speed / (14 + 3 * (i & 1));
			apples2[i].gravity = apples2[i].speed / (14 + 3 * (i & 1));
		}
		p = 6;
	}
	for(i = 0; i < 29; i += 1) {
		if(i == 14) { continue; }
		apples1[i].x = apples1[14].x;
		apples2[i].x = apples2[14].x;
	}
} else if(p == 6) {
	if(f == 175 && instance_exists(player)) {
		for(i = 3; i < 29; i += 4) {
			apples1[i].xs = apples1[i].x;
			apples1[i].xt = 316;
			apples1[i].ys = apples1[i].y;
			apples1[i].yt = apples1[i].y;
			apples1[i].fs = f;
			apples1[i].ft = f + 13;
			apples1[i].p6move = true;
			apples1[i].gravity = 0;
			apples1[i].speed = 0;
		}
		for(i = 1; i < 29; i += 4) {
			apples2[i].xs = apples2[i].x;
			apples2[i].xt = 484;
			apples2[i].ys = apples2[i].y;
			apples2[i].yt = apples2[i].y;
			apples2[i].fs = f;
			apples2[i].ft = f + 13;
			apples2[i].p6move = true;
			apples2[i].gravity = 0;
			apples2[i].speed = 0;
		}
	}
	if(f == 181 && instance_exists(player)) {
		for(i = 0; i < 29; i += 1) {
			apples1[i].gravity = 0;
			apples2[i].gravity = 0;
		}
	}
	if(f == 187 && instance_exists(player)) {
		for(i = 1; i < 29; i += 4) {
			apples1[i].xs = apples1[i].x;
			apples1[i].xt = 316;
			apples1[i].ys = apples1[i].y;
			apples1[i].yt = apples1[i].y;
			apples1[i].fs = f;
			apples1[i].ft = f + 13;
			apples1[i].p6move = true;
			apples1[i].gravity = 0;
			apples1[i].speed = 0;
		}
		for(i = 3; i < 29; i += 4) {
			apples2[i].xs = apples2[i].x;
			apples2[i].xt = 484;
			apples2[i].ys = apples2[i].y;
			apples2[i].yt = apples2[i].y;
			apples2[i].fs = f;
			apples2[i].ft = f + 13;
			apples2[i].p6move = true;
			apples2[i].gravity = 0;
			apples2[i].speed = 0;
		}
		for(i = 0; i < 27; i += 2) {
			apples1[i].xs = apples1[i].x;
			apples1[i].xt = 492;
			apples1[i].ys = apples1[i].y;
			apples1[i].yt = apples1[((i / 2) ^ 1) * 2].y;
			apples1[i].fs = f;
			apples1[i].ft = f + 11;
			apples1[i].p6move = true;
			apples1[i].gravity = 0;
			apples1[i].speed = 0;
			apples2[i].xs = apples2[i].x;
			apples2[i].xt = 308;
			apples2[i].ys = apples2[i].y;
			apples2[i].yt = apples2[((i / 2) ^ 1) * 2].y;
			apples2[i].fs = f;
			apples2[i].ft = f + 11;
			apples2[i].p6move = true;
			apples2[i].gravity = 0;
			apples2[i].speed = 0;
		}
	}
	if(f == 197 && instance_exists(player)) {
		for(i = 0; i < 27; i += 2) {
			apples1[i].xs = apples1[i].x;
			apples1[i].xt = room_width / 2;
			apples1[i].ys = apples1[i].y;
			apples1[i].yt = apples1[i].y;
			apples1[i].fs = f;
			apples1[i].ft = f + 15;
			apples2[i].xs = apples2[i].x;
			apples2[i].xt = room_width / 2;
			apples2[i].ys = apples2[i].y;
			apples2[i].yt = apples2[i].y;
			apples2[i].fs = f;
			apples2[i].ft = f + 15;
		}
	}
	if(f == 211 && instance_exists(player)) {
		for(i = 0; i < 29; i += 1) {
			instance_destroy(apples1[i]);
			instance_destroy(apples2[i]);
		}
		instance_create(room_width / 2, room_height / 2, part4p3EndWallController);
		instance_destroy();
		exit;
	}
	
	with(part4p3DoubleLineApple) {
		if(p6move) {
			x = EaseOutCubic(clamp(other.f, fs, ft) - fs, 0, xt - xs, ft - fs) + xs;
			y = EaseOutCubic(clamp(other.f, fs, ft) - fs, 0, yt - ys, ft - fs) + ys;
		}
	}
}

f += 1;
