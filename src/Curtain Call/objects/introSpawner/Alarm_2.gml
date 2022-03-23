for(var i = 0; i < 8; i++) {
    with(circlers[i]) {instance_destroy();}
}
with(introEndBGColourer) {instance_destroy();}
with(pinkCircle){instance_destroy();}
var a = instance_create(0, 0, part2BG);
a.image_blend = make_colour_hsv(0, 32.9, 255);
a.image_xscale = 25;
a.image_yscale = 19;
instance_destroy();

