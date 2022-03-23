frames += 1;
if(following != noone) {
    if(instance_exists(following)) {
        x = following.x + (follow_offsetx * following.image_xscale);
        y = following.y + (follow_offsety * following.image_yscale);
    }
    else {
        instance_destroy();
    }
}

