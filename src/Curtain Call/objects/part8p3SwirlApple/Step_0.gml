if(f <= 25) {
	dist = EaseOutCubic(f, 0, tdist - sdist, 25) + sdist;
}

dir += s;

var a = instance_create(x, y, part8p3SwirlTrail);
a.sprite_index = sAppleBlendPure;
a.image_blend = image_blend;
a.image_alpha = 0.8;
a.depth = depth + 1;

f += 1;
