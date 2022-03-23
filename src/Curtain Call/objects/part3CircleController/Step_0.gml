angle += spinspeed;
r += growspeed;
growspeed += growaccel;
vspeed -= upaccel;

var i;
for(i = 0; i < applecount; i++) {
    d = angle + ((i / applecount) * 360);
    apples[i].x = x+lengthdir_x(r, d);
    apples[i].y = y+lengthdir_y(r, d);
}

pinkcircle.image_xscale = (r+4)/64;
pinkcircle.image_yscale = (r+4)/64;
pinkcircle.image_angle = angle;
pinkcircle.x = x;
pinkcircle.y = y;

if (phase < 2) {
	shadow.image_alpha += 0.45 / 100;
}

if(phase == 1) {
    growspeed += (2/25);
}

if(shooteveryframe && (growspeed < 0) && instance_exists(player)) {
    for(i = 0; i < applecount; i++) {
        var a = instance_create(apples[i].x, apples[i].y, trail);
        a.sprite_index = apples[i].sprite_index;
        a.image_blend = apples[i].image_blend;
        a.image_xscale = apples[i].image_xscale;
        a.image_yscale = apples[i].image_yscale;
        a.speed = 20;
        a.direction = point_direction(x, y, a.x, a.y);
		a.fadeSpeed = 0.015;
		a.scaleDownSpeed = 1/15;
    }
}

with(part3InwardApple) {
	var _dist = point_distance(x, y, other.x, other.y);
	var _dir = point_direction(other.x, other.y, x, y) + other.inwardrotate;
	x = other.x + lengthdir_x(_dist, _dir);
	y = other.y + lengthdir_y(_dist, _dir);
	gravity_direction = _dir + 180;
}

shadow.r = r;
shadow.x = x;
shadow.y = y;
