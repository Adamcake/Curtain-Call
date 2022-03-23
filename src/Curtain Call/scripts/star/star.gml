/// @description  star(x,y,obj,perline,angle,speed)
/// @param x
/// @param y
/// @param obj
/// @param perline
/// @param angle
/// @param speed
function star(argument0, argument1, argument2, argument3, argument4, argument5) {
	// arg0: x
	// arg1: y
	// arg2: object type
	// arg3: instances per line
	// arg4: angle
	// arg5: speed

	var perline = round(argument3) - 1;
	if(perline < 1) exit; // prevent division by 0

	var p1x = argument0 + lengthdir_x(1, (argument4));
	var p1y = argument1 + lengthdir_y(1, (argument4));
	var p2x = argument0 + lengthdir_x(1, (argument4 + 72));
	var p2y = argument1 + lengthdir_y(1, (argument4 + 72));
	var p3x = argument0 + lengthdir_x(1, (argument4 + 144));
	var p3y = argument1 + lengthdir_y(1, (argument4 + 144));
	var p4x = argument0 + lengthdir_x(1, (argument4 + 216));
	var p4y = argument1 + lengthdir_y(1, (argument4 + 216));
	var p5x = argument0 + lengthdir_x(1, (argument4 + 288));
	var p5y = argument1 + lengthdir_y(1, (argument4 + 288));

	// 1->3, 3->5, 5->2, 2->4, 4->1

	var dist_ratio = 0;
	var a;
	repeat(argument3) {
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p1x, p3x, 1), EaseLinear(dist_ratio, p1y, p3y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p1x, p3x, 1), EaseLinear(dist_ratio, p1y, p3y, 1));
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p3x, p5x, 1), EaseLinear(dist_ratio, p3y, p5y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p3x, p5x, 1), EaseLinear(dist_ratio, p3y, p5y, 1));
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p5x, p2x, 1), EaseLinear(dist_ratio, p5y, p2y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p5x, p2x, 1), EaseLinear(dist_ratio, p5y, p2y, 1));
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p2x, p4x, 1), EaseLinear(dist_ratio, p2y, p4y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p2x, p4x, 1), EaseLinear(dist_ratio, p2y, p4y, 1));
	    a = instance_create(argument0, argument1, argument2);
	    a.direction = point_direction(argument0, argument1, EaseLinear(dist_ratio, p4x, p1x, 1), EaseLinear(dist_ratio, p4y, p1y, 1));
	    a.speed = argument5 * point_distance(argument0, argument1, EaseLinear(dist_ratio, p4x, p1x, 1), EaseLinear(dist_ratio, p4y, p1y, 1));
	    dist_ratio += 1/perline;
	}



}
