/// @description  triangle(x,y,obj,perline,angle,speed)
/// @param x
/// @param y
/// @param obj
/// @param perline
/// @param angle
/// @param speed
/// @param scale
/// @param blend
function triangle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	var perline = round(argument3) - 1;
	if(perline < 1) exit; // prevent division by 0

	var p1x = argument0 + lengthdir_x(1, (argument4));
	var p1y = argument1 + lengthdir_y(1, (argument4));
	var p2x = argument0 + lengthdir_x(1, (argument4 + 120));
	var p2y = argument1 + lengthdir_y(1, (argument4 + 120));
	var p3x = argument0 + lengthdir_x(1, (argument4 + 240));
	var p3y = argument1 + lengthdir_y(1, (argument4 + 240));

	// 1->2, 2->3, 3->1

	var dist_ratio = 0;
	var a;
	repeat(perline) {
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p1x, p2x, 1), EaseLinear(dist_ratio, p1y, p2y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p1x, p2x, 1), EaseLinear(dist_ratio, p1y, p2y, 1));
	    a.image_blend = argument7;
		a.image_xscale = argument6;
		a.image_yscale = argument6;
		a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p2x, p3x, 1), EaseLinear(dist_ratio, p2y, p3y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p2x, p3x, 1), EaseLinear(dist_ratio, p2y, p3y, 1));
	    a.image_blend = argument7;
		a.image_xscale = argument6;
		a.image_yscale = argument6;
		a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p3x, p1x, 1), EaseLinear(dist_ratio, p3y, p1y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p3x, p1x, 1), EaseLinear(dist_ratio, p3y, p1y, 1));
	    a.image_blend = argument7;
		a.image_xscale = argument6;
		a.image_yscale = argument6;
		dist_ratio += 1/perline;
	}
}
