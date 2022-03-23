var dist, a, i, next_apple_index;
if(ending) {
	dist = 550 - (min(f, 225) * 2.264);
	direction += 360 / (7 * 50);
} else {
	dist = EaseOutQuad(min(f, 31), 0, 550, 31);
	direction += 360 / (7 * 50 / 2);
}
for(i = 0; i < applecount; i += 1) {
	apples[i].x = x + lengthdir_x(dist, direction + (i * 360 / 7));
	apples[i].y = y + lengthdir_y(dist, direction + (i * 360 / 7));
	if(!ending) {
		a = instance_create(apples[i].x, apples[i].y, trail);
		a.image_blend = c_white;
		a.sprite_index = sAppleBlendPure;
		a.image_xscale = 2.5;
		a.image_yscale = 2.5;
	}
}
for(i = 0; i < applecount; i += 1) {
	if((f + i) mod 3 == 0 && ending) {
		next_apple_index = (i + 1) mod applecount;
		a = instance_create(apples[i].x, apples[i].y, part4p2TriWallApple);
		a.direction = point_direction(a.x, a.y, apples[next_apple_index].x, apples[next_apple_index].y);
		a.speed = 17;
		next_apple_index = (i + 2) mod applecount;
		a = instance_create(apples[i].x, apples[i].y, part4p2TriWallApple);
		a.direction = point_direction(a.x, a.y, apples[next_apple_index].x, apples[next_apple_index].y);
		a.speed = 17;
	}
}
f += 1;
