direction += curve;

if(f >= 25) {
	image_alpha -= 0.25 / 6;
	if(image_alpha <= 0) {
		instance_destroy();
	}
}

f += 1;
