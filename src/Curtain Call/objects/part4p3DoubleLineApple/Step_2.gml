if(visible) {
	var a = instance_create(x, y, trail);
	a.sprite_index = sAppleBlendPure;
	a.image_blend = image_blend;
	a.fadeSpeed = 0.1;
	a.image_alpha = 0.75;
	a.depth = -3;
}
