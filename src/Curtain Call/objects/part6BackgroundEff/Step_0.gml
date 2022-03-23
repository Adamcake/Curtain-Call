if(fadeout) {
	alpha -= 0.1;
	if(alpha <= 0) {
		instance_destroy();
	}
}
