if(ending) {
	val -= 255/37;
	bgalpha -= 0.0058;
	if(val <= 0) {
		instance_destroy();
	}
} else if(fade1) {
	bgalpha = 0.275 - EaseInOutQuad(min(f1f, 25), 0, 0.13, 25);
	baralpha = 0.03 - EaseInOutQuad(min(f1f, 25), 0, 0.03, 25);
	f1f += 1;
}

f += 1;
hue = (hue + (256 / 200)) % 255;
with(part8p3BigApple) { image_blend = make_colour_hsv(other.hue, 220, 255); }
