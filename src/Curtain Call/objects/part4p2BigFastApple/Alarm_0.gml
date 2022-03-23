var a, i;
for(i = 10; i < 180; i += 10) {
	a = instance_create(x, y, part4p3GravityApple);
	a.direction = i;
	a.speed = 10;
	a.image_blend = image_blend;
}
repeat(6) {
	a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_xscale = image_xscale;
	a.image_yscale = image_yscale;
	a.image_blend = image_blend;
	a.fadeSpeed = 0.01;
	a.direction = random(360);
	a.speed = random_range(3, 5);
	a.depth = -3;	
}
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
instance_destroy();
