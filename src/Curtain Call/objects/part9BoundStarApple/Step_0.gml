if(f <= 12) {
	image_xscale = EaseOutQuad(f, 0, 1, 12);
	image_yscale = image_xscale;
}

if(f > 3) {
	direction -= 0.35;
}

f += 1;
