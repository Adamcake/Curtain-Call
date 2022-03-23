r = 520;
applecount = 60;
spinspeed = -1.8;
angle = random(360);
lightalpha = 0.0;
shrinkspeed = 0;
ending = false;
endf = 0;
camerascale = 1.0;
camerascalespeed = 0;
f = 0;

uniform_center = shader_get_uniform(shRadius, "v_Center");
uniform_radius = shader_get_uniform(shRadius, "v_Radius");
uniform_edgesize = shader_get_uniform(shRadius, "v_EdgeSize");

var d;
for(var i = 0; i < applecount; i++) {
    d = angle + ((i / applecount) * 360);
    apples[i] = instance_create(x+lengthdir_x(r, d), y+lengthdir_y(r, d), part9CircleApple);
    apples[i].image_blend = make_colour_hsv((i / applecount) * 256, 210, 255);
}
