var a;
switch(choose(0, 1, 2, 3)) {
	case 0:
		a = instance_create(-50, random(room_height), bossCircleShadow);
		a.direction = 0;
		break;
	case 1:
		a = instance_create(random(room_width), -50, bossCircleShadow);
		a.direction = 270;
		break;
	case 2:
		a = instance_create(room_width + 50, random(room_height), bossCircleShadow);
		a.direction = 180;
		break;
	default:
		a = instance_create(random(room_width), room_height + 50, bossCircleShadow);
		a.direction = 90;
		break;
}
a.d = choose(1, -1);
a.speed = 8;
a.depth = 1;
a.image_alpha = 0.85;

alarm[0] = 12 + frame_modifier;
frame_modifier = !frame_modifier;
