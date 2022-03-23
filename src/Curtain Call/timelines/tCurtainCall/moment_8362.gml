/// @description: P7 end transition
with(part7Apple) {
	with(instance_create(x, y, trail)) {
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		direction = 60 + random(60);
		speed = random_range(6, 10);
		gravity = 0.15;
		image_blend = other.image_blend;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		fadeSpeed = 0.015;
		scaleDownSpeed = 0;
	}
	instance_destroy();
}
with(part7DelayedApple) {
	with(instance_create(x, y, trail)) {
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		direction = 60 + random(60);
		speed = random_range(6, 10);
		gravity = 0.15;
		image_blend = other.image_blend;
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		fadeSpeed = 0.015;
		scaleDownSpeed = 0;
	}
	instance_destroy();
}
with(block) {
	with(instance_create(x, y, trail)) {
		sprite_index = other.sprite_index;
		image_index = other.image_index;
		direction = 60 + random(60);
		speed = random_range(6, 10);
		gravity = 0.15;
		fadeSpeed = 0.015;
		scaleDownSpeed = 0;
	}
	instance_destroy();
}
with(part7BgEff) { instance_destroy(); }
with(part7BgParticle) { visible = true; }
