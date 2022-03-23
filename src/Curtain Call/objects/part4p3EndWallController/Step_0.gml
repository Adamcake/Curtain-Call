var i;

for(i = 0; i <= 23; i += 1) {
	lgreen[i].xt = min(lgreen[i].xt + 3, room_width / 2);
	rgreen[i].xt = max(rgreen[i].xt - 3, room_width / 2);
}

if(f == 12) {
	for(i = 0; i <= 23; i += 1) {
		lblue[i].fs = f;
		lblue[i].xt += 288;
		lblue[i].xft = f + 25;
		lblue[i].yft = f + 25;
		rblue[i].fs = f;
		rblue[i].xt -= 288;
		rblue[i].xft = f + 25;
		rblue[i].yft = f + 25;
	}
}
if(f >= 25) {
	for(i = 0; i <= 23; i += 1) {
		lblue[i].xt += 15;
		rblue[i].xt -= 15;
	}
}

with(part4p3DoubleLineApple) {
	x = EaseOutCubic(clamp(other.f, fs, xft) - fs, 0, xt - xs, xft - fs) + xs;
	y = EaseOutCubic(clamp(other.f, fs, yft) - fs, 0, yt - ys, yft - fs) + ys;
}

f += 1;
