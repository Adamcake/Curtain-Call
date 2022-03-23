/// @description  EaseLinear(inputvalue,outputmin,outputmax,inputmax)
/// @param inputvalue
/// @param outputmin
/// @param outputmax
/// @param inputmax
function EaseLinear(argument0, argument1, argument2, argument3) {
	return ((argument0 / argument3) * (argument2 - argument1)) + argument1;



}
