image_alpha -= 0.03;
if (image_xscale < 2) {
    image_xscale += 0.2;
    image_yscale += 0.2;
}
if (image_alpha < 0) {
    instance_destroy();
}
