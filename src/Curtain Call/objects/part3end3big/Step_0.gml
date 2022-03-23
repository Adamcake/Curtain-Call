if(f < 6) {
    f += 1;
    image_xscale = 5 - (f * 2.5 / 6);
    image_yscale = image_xscale;
    image_alpha = f / 6;
    
    if(f == 6) {
        instance_create(0, 0, part3ScreenBump);
    }
}


