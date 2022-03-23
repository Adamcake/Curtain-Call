image_xscale = sqrt(f / 20) * 1.1;
image_yscale = image_xscale;
image_alpha -= 0.0032;

if(image_alpha <= 0) {
	instance_destroy();
}

f += 1;
