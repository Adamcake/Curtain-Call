if(inFrames) {
    sat -= 4;
    inFrames -= 1;
    image_blend = make_colour_hsv(hue, sat, 255);
}
image_xscale += growSpeed;
image_yscale += growSpeed;
growSpeed += 0.03;
