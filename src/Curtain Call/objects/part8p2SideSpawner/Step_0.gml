var a;

if(f mod 9 == 0) {
	a = instance_create(-8, random(room_height), part8p2SideApple);
	a.direction = 0;
	a = instance_create(room_width + 8, random(room_height), part8p2SideApple);
	a.direction = 180;
}

f += 1;
