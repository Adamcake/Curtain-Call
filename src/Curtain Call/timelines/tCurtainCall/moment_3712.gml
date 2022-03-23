/// @description: P4 circle curving burst #2
var a;
with(p4circle3) {
	for(var i = 1; i < 20; i += 2) {
		a = instance_create(apples[i].x, apples[i].y, part4p1CurvingApple);
		a.direction = point_direction(x, y, a.x, a.y) + 90;
		a.speed = 13;
		a.curve = -2;
		a.image_blend = apples[i].image_blend;
	}
	
	for(var i = 0; i < 20; i += 1) {
		instance_destroy(apples[i]);
	}
	instance_destroy();
}
