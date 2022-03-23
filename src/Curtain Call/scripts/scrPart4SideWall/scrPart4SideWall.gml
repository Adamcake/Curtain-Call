function scrPart4SideWall(){
	var a, c, i;
	c = make_colour_hsv(197, irandom_range(174, 204), 255);
	for(i = 32; i <= room_height; i += 64) {
		a = instance_create(__view_get(e__VW.XView, 0), i, part4p2SidewaysWallApple);
		a.d = 0;
		//a.speed = 14.5;
		a.image_blend = c;
		a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0), i, part4p2SidewaysWallApple);
		a.d = 180;
		//a.speed = 14.5;
		a.image_blend = c;
	}
}