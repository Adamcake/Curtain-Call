/// @description: P5 despawn purple circle
var a, i;
with(part5PurpleCircleController) {
	for(i = 0; i < count; i += 1) {
		repeat(choose(3, 4)) {
			a = instance_create(apples2[i].x, apples2[i].y, trail);
			a.sprite_index = sAppleBlend;
			a.image_blend = make_colour_hsv(204, 75, 230);
			a.direction = random(360);
			a.speed = random_range(3, 6);
			a.gravity = 0.4;
			a.image_xscale = 0.2;
			a.image_yscale = 0.2;
			a.scaleDownSpeed /= 5;
		}
		instance_destroy(apples1[i]);
		instance_destroy(apples2[i]);
	}
	instance_create(x, y, part5Follow);
	instance_destroy();
}
