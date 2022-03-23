if(ending) {
	image_alpha -= 0.011;
	if(image_alpha <= 0) {
		instance_destroy();
	}
}

f += 1;
