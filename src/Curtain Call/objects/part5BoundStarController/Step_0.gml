var i, x1, x2, x3, x4, x5, y1, y2, y3, y4, y5;
x1 = x + lengthdir_x(r, direction);
x2 = x + lengthdir_x(r, direction + 72);
x3 = x + lengthdir_x(r, direction + (72 * 2));
x4 = x + lengthdir_x(r, direction + (72 * 3));
x5 = x + lengthdir_x(r, direction + (72 * 4));
y1 = y + lengthdir_y(r, direction);
y2 = y + lengthdir_y(r, direction + 72);
y3 = y + lengthdir_y(r, direction + (72 * 2));
y4 = y + lengthdir_y(r, direction + (72 * 3));
y5 = y + lengthdir_y(r, direction + (72 * 4));

for(i = 0; i < applesperline; i += 1) {
	line1[i].x = x1 + (x3 - x1) * i / applesperline;
	line1[i].y = y1 + (y3 - y1) * i / applesperline;
	line2[i].x = x2 + (x4 - x2) * i / applesperline;
	line2[i].y = y2 + (y4 - y2) * i / applesperline;
	line3[i].x = x3 + (x5 - x3) * i / applesperline;
	line3[i].y = y3 + (y5 - y3) * i / applesperline;
	line4[i].x = x4 + (x1 - x4) * i / applesperline;
	line4[i].y = y4 + (y1 - y4) * i / applesperline;
	line5[i].x = x5 + (x2 - x5) * i / applesperline;
	line5[i].y = y5 + (y2 - y5) * i / applesperline;
}

direction += turnspeed;
r += rspeed;
f += 1;
