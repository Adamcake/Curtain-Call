r = 510;
applecount = 48;
angle = random(360);
phase = 0;
spinspeed = -1.8;
growspeed = -3.1;
growaccel = 0;
upaccel = 0;
pinkcircle = instance_create(x, y, introPinkCircle);
pinkcircle.image_xscale = r/64;
pinkcircle.image_yscale = r/64;
pinkcircle.image_angle = angle;
shadow = instance_create(x, y, bossCircleShadow);
shadow.die_outside_room = false;
shadow.r = r;
shadow.image_alpha = 0.0;
shooteveryframe = false;
inwardrotate = 0;

var d;
for(var i = 0; i < applecount; i++) {
    d = angle + ((i / applecount) * 360);
    apples[i] = instance_create(x+lengthdir_x(r, d), y+lengthdir_y(r, d), part3CircleApple);
    apples[i].image_blend = make_colour_hsv((i / applecount) * 256, 210, 255);
}

alarm[0] = 75;

