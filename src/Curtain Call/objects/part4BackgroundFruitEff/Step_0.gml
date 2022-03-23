f += 1;
if(f >= 50) {
    instance_destroy();
}
else {
    var scale = ((0.08*f) - power(f/25, 2)) * maxs;
    image_xscale = scale;
    image_yscale = scale;
}

