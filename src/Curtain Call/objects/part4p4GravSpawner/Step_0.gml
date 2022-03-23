if(bbox_top + vspeed <= 32) {
	vspeed = -vspeed;
}
if(bbox_left + hspeed < 224) {
	hspeed = -hspeed;
	vspeed = -vspeed;
}

if(f & 1 && s) {
	var a = instance_create(x, y, part4p4GravApple);
	a.direction = random(360);
	a.speed = 4 + random(2);
	a.image_blend = image_blend;
}

f += 1;
