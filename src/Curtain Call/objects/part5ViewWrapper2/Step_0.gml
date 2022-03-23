image_xscale = 0.7 + EaseOutBack(min(f, 12), 0, 0.18, 12);
image_yscale = image_xscale;
hspeed *= hsdecay;

f += 1;
