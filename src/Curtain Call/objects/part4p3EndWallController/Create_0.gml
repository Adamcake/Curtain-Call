var i;
for(i = 0; i < 12; i += 1) {
	lgreen[i * 2] = instance_create(room_width / 2, i * 64 - 16, part4p3DoubleLineApple);
	lgreen[i * 2].image_blend = make_colour_hsv(93, 180, 252);
	lgreen[i * 2].xs = lgreen[i * 2].x;
	lgreen[i * 2].ys = lgreen[i * 2].y;
	lgreen[i * 2].xt = lgreen[i * 2].x - 115;
	lgreen[i * 2].yt = lgreen[i * 2].y - 16;
	lgreen[i * 2].fs = 0;
	lgreen[i * 2].xft = 25;
	lgreen[i * 2].yft = 6;
	lgreen[i * 2 + 1] = instance_create(room_width / 2, i * 64 - 16, part4p3DoubleLineApple);
	lgreen[i * 2 + 1].image_blend = make_colour_hsv(93, 180, 252);
	lgreen[i * 2 + 1].xs = lgreen[i * 2 + 1].x;
	lgreen[i * 2 + 1].ys = lgreen[i * 2 + 1].y;
	lgreen[i * 2 + 1].xt = lgreen[i * 2 + 1].x - 115;
	lgreen[i * 2 + 1].yt = lgreen[i * 2 + 1].y + 16;
	lgreen[i * 2 + 1].fs = 0;
	lgreen[i * 2 + 1].xft = 25;
	lgreen[i * 2 + 1].yft = 6;
	
	rgreen[i * 2] = instance_create(room_width / 2, i * 64 - 16, part4p3DoubleLineApple);
	rgreen[i * 2].image_blend = make_colour_hsv(93, 180, 252);
	rgreen[i * 2].xs = lgreen[i * 2].x;
	rgreen[i * 2].ys = lgreen[i * 2].y;
	rgreen[i * 2].xt = lgreen[i * 2].x + 115;
	rgreen[i * 2].yt = lgreen[i * 2].y - 16;
	rgreen[i * 2].fs = 0;
	rgreen[i * 2].xft = 25;
	rgreen[i * 2].yft = 6;
	rgreen[i * 2 + 1] = instance_create(room_width / 2, i * 64 - 16, part4p3DoubleLineApple);
	rgreen[i * 2 + 1].image_blend = make_colour_hsv(93, 180, 252);
	rgreen[i * 2 + 1].xs = lgreen[i * 2 + 1].x;
	rgreen[i * 2 + 1].ys = lgreen[i * 2 + 1].y;
	rgreen[i * 2 + 1].xt = lgreen[i * 2 + 1].x + 115;
	rgreen[i * 2 + 1].yt = lgreen[i * 2 + 1].y + 16;
	rgreen[i * 2 + 1].fs = 0;
	rgreen[i * 2 + 1].xft = 25;
	rgreen[i * 2 + 1].yft = 6;
	
	lblue[i * 2] = instance_create(316, i * 64 - 48, part4p3DoubleLineApple);
	lblue[i * 2].image_blend = make_colour_hsv(133, 180, 252);
	lblue[i * 2].xs = lblue[i * 2].x;
	lblue[i * 2].ys = lblue[i * 2].y;
	lblue[i * 2].xt = lblue[i * 2].x;
	lblue[i * 2].yt = lblue[i * 2].y;
	lblue[i * 2].fs = 0;
	lblue[i * 2].xft = 37;
	lblue[i * 2].yft = 37;
	lblue[i * 2].depth -= 1;
	lblue[i * 2 + 1] = instance_create(316, i * 64 - 48, part4p3DoubleLineApple);
	lblue[i * 2 + 1].image_blend = make_colour_hsv(133, 180, 252);
	lblue[i * 2 + 1].xs = lblue[i * 2 + 1].x;
	lblue[i * 2 + 1].ys = lblue[i * 2 + 1].y;
	lblue[i * 2 + 1].xt = lblue[i * 2 + 1].x;
	lblue[i * 2 + 1].yt = lblue[i * 2 + 1].y;
	lblue[i * 2 + 1].fs = 0;
	lblue[i * 2 + 1].xft = 37;
	lblue[i * 2 + 1].yft = 37;
	lblue[i * 2 + 1].depth -= 1;
	
	rblue[i * 2] = instance_create(484, i * 64 - 48, part4p3DoubleLineApple);
	rblue[i * 2].image_blend = make_colour_hsv(133, 180, 252);
	rblue[i * 2].xs = rblue[i * 2].x;
	rblue[i * 2].ys = rblue[i * 2].y;
	rblue[i * 2].xt = rblue[i * 2].x;
	rblue[i * 2].yt = rblue[i * 2].y;
	rblue[i * 2].fs = 0;
	rblue[i * 2].xft = 37;
	rblue[i * 2].yft = 37;
	rblue[i * 2].depth -= 1;
	rblue[i * 2 + 1] = instance_create(484, i * 64 - 48, part4p3DoubleLineApple);
	rblue[i * 2 + 1].image_blend = make_colour_hsv(133, 180, 252);
	rblue[i * 2 + 1].xs = rblue[i * 2 + 1].x;
	rblue[i * 2 + 1].ys = rblue[i * 2 + 1].y;
	rblue[i * 2 + 1].xt = rblue[i * 2 + 1].x;
	rblue[i * 2 + 1].yt = rblue[i * 2 + 1].y;
	rblue[i * 2 + 1].fs = 0;
	rblue[i * 2 + 1].xft = 37;
	rblue[i * 2 + 1].yft = 37;
	rblue[i * 2 + 1].depth -= 1;
}

f = 0;