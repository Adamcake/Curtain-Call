move_wrap(true, true, 0);
image_blend = make_colour_hsv(hue, 209, 255);
hue += 5.2;
spawncount -= 1;
if(spawncount == 0) {
	var a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_xscale = image_xscale;
	a.image_yscale = image_yscale;
	a.image_blend = image_blend;
	a.fadeSpeed = 0.01;
	a.direction = random(360);
	a.speed = 1;
	a.depth = -3;
	spawncount = 1;
}

__view_set( e__VW.XView, 0, irandom_range(-3, 3) );
__view_set( e__VW.YView, 0, irandom_range(-3, 3) );
