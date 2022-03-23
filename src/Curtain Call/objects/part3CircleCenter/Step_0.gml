if(f < 25) {
    image_xscale = EaseOutQuad(f, 0, 1.5, 25);
    image_yscale = image_xscale;
}
f += 1;
image_blend = make_colour_hsv(f % 256, 255, 220);

if(g >= 0) {
    g++;
    if(g == 25) {
        if(fade) {
            instance_destroy();
        }
        else {
            image_xscale = 1.5;
            image_yscale = 1.5;
            g = -1;
        }
    }
    else {
        if(fade) {
            image_xscale = 2.5 - EaseOutQuad(g, 0, 2.5, 25);
            image_yscale = image_xscale;
        }
        else {
            image_xscale = 2.5 - EaseOutQuad(g, 0, 1, 25);
            image_yscale = image_xscale;
        }
    }
}

