var a, sv;
sv = 225 + (22 * dcos(f * 50 / 360));
image_blend = make_colour_hsv(direction * 255 / 360, sv, sv);
a = instance_create(x, y, part4p3LinearApple);
a.direction = direction;
a.speed = 9;
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.image_blend = image_blend;
a = instance_create(x, y, part4p3LinearApple);
a.direction = direction + 180;
a.speed = 9;
a.image_xscale = image_xscale;
a.image_yscale = image_yscale;
a.image_blend = image_blend;

if(f == 23) {
	rotspeed += 2;	
}

rotspeed = min(rotspeed + (200 / 240), 9);
direction += rotspeed;
f += 1;
