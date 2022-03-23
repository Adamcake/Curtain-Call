image_xscale = sqrt(f / 46) * 0.525;
image_yscale = image_xscale;
image_alpha = 0.02 + EaseOutQuad(min(f, 50), 0, 0.175, 50);

f += 1;
