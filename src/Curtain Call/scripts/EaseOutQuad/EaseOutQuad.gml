/// @description  EaseOutQuad(inputvalue,outputmin,outputmax,inputmax)
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseOutQuad(argument0, argument1, argument2, argument3) {
	argument0 /= argument3;
	return -argument2 * argument0 * (argument0 - 2) + argument1;



}
