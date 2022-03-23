if(image_xscale < 1) {
	image_xscale = min(image_xscale + 1/38, 1);
	image_yscale = image_xscale;
}

if(image_alpha < 1) {
	image_alpha = min(image_alpha + 1/25, 1);
}

if(image_angle > 0) {
	image_angle = max(image_angle - 1, 0);
}
