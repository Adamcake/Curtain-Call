if(f <= 6) {
    apple1.image_xscale = 5 - (f * 2.6 / 6);
    apple1.image_yscale = apple1.image_xscale;
    apple1.image_alpha = f / 6;
}

if(f >= 12 && f <= 18) {
	apple2.image_xscale = 5 - ((f - 12) * 2.6 / 6);
    apple2.image_yscale = apple2.image_xscale;
    apple2.image_alpha = (f - 12) / 6;
}

if(f >= 25 && f <= 31) {
	apple3.image_xscale = 5 - ((f - 25) * 2.6 / 6);
    apple3.image_yscale = apple3.image_xscale;
    apple3.image_alpha = (f - 25) / 6;
}

apple1.x = x + lengthdir_x(35, angle + 90);
apple1.y = y + lengthdir_y(35, angle + 90);
apple2.x = x + lengthdir_x(35, angle + 210);
apple2.y = y + lengthdir_y(35, angle + 210);
apple3.x = x + lengthdir_x(35, angle + 330);
apple3.y = y + lengthdir_y(35, angle + 330);

angle += rotspeed;
f += 1;
