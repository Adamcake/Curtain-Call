var a, i, p;

if(f <= 25) {
	image_xscale = EaseOutQuad(f, 0, 2.5, 25);
	image_yscale = image_xscale;
}

switch(go) {
	case 1:
		xp = x;
		yp = y;
		x = xstart + sin(loopframes / 10) * 170;
		y = ystart - EaseOutCubic(min(loopframes, 25), 0, ystart - (75 + cos(loopframes / 10) * 35), 25);
		image_angle = sin(loopframes * 7 / 30) * 25;
		loopframes += 1;
		break;
	case 2:
		if(!g2f) {
			direction = point_direction(xp, yp, x, y);
			speed = point_distance(xp, yp, x, y);
			friction = -0.335;
			g2f = true;
		} else if(direction > 270) {
			direction = direction + (360 - direction) / 2;
		}
		if(bbox_left >= room_width) {
			x -= room_width + (bbox_right - bbox_left);
		}
		break;
	case 3:
		if(bbox_left >= room_width) {
			x -= room_width + (bbox_right - bbox_left);
			g3w = true;
			hspeed *= 0.75;
		}
		hspeed -= 2.2;
		break;
	case 4:
		if(bbox_right < 0) {
			instance_destroy();
		}
}

switch(shoot) {
	case 1:
		if(shootframes mod 5 == 0 || shootframes mod 5 == 2) {
			a = instance_create(random(room_width), -8, part8p3LineApple);
			a.speed = 12;
			a.direction = 270 + cos(loopframes / 10) * 24;
			a.image_blend = image_blend;
		}
		
		shootframes += 1;
		break;
	case 3:
		if(g3w && instance_exists(player)) {
			p = point_direction(x, y, player.x, player.y) + 360 / 16;
			for(i = 0; i < 8; i += 1) {
				a = instance_create(x, y, part8p3LineApple);
				a.speed = 19;
				a.direction = p + i * 360 / 8;
				a.image_blend = image_blend;
			}
		}
		g3f += 1;
		if(g3f > 20) {
			break;
		}
	case 2:
		if(shootframes mod 4 == 0) {
			a = instance_create(x, y, part8p3LineApple);
			a.speed = 6.5;
			a.direction = random(360);
			a.gravity = 0.4;
			a.image_blend = image_blend;
		}
		
		shootframes += 1;
		break;
}

f += 1;
