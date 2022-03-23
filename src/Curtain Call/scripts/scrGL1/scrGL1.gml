// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @param x
/// @param y
/// @param object 1
/// @param object 2
/// @param object 3
/// @param object 4
function scrGL1(argument0, argument1, argument2, argument3, argument4, argument5){
	// left half of 頑
	instance_create(argument0 + 4, argument1, argument2);
	instance_create(argument0 + 12, argument1, argument2);
	instance_create(argument0 + 20, argument1, argument2);
	instance_create(argument0 + 28, argument1, argument2);
	instance_create(argument0 + 36, argument1, argument2);
	instance_create(argument0, argument1 + 14, argument2);
	instance_create(argument0 + 8, argument1 + 14, argument2);
	instance_create(argument0 + 16, argument1 + 14, argument2);
	instance_create(argument0 + 24, argument1 + 14, argument2);
	instance_create(argument0 + 32, argument1 + 14, argument2);
	instance_create(argument0 + 40, argument1 + 14, argument2);
	instance_create(argument0 + 10, argument1 + 14, argument2);
	instance_create(argument0 + 10, argument1 + 21, argument2);
	instance_create(argument0 + 10, argument1 + 28, argument2);
	instance_create(argument0 + 10, argument1 + 35, argument2);
	instance_create(argument0 + 10, argument1 + 42, argument2);
	instance_create(argument0 + 10, argument1 + 49, argument2);
	instance_create(argument0 + 9, argument1 + 56, argument2);
	instance_create(argument0 + 8, argument1 + 63, argument2);
	instance_create(argument0 + 6, argument1 + 70, argument2);
	instance_create(argument0 + 4, argument1 + 77, argument2);
	instance_create(argument0 + 31, argument1 + 14, argument2);
	instance_create(argument0 + 31, argument1 + 22, argument2);
	instance_create(argument0 + 31, argument1 + 30, argument2);
	instance_create(argument0 + 31, argument1 + 38, argument2);
	instance_create(argument0 + 31, argument1 + 46, argument2);
	instance_create(argument0 + 31, argument1 + 54, argument2);
	instance_create(argument0 + 31, argument1 + 62, argument2);
	instance_create(argument0 + 31, argument1 + 70, argument2);
	instance_create(argument0 + 27, argument1 + 80, argument2);
	instance_create(argument0 + 34, argument1 + 75, argument2);
	instance_create(argument0 + 41, argument1 + 70, argument2);
	
	// right half of 頑
	for(var i = 0; i < 5; i += 1) {
		instance_create(argument0 + 53, argument1 + i * 16, argument2);
		instance_create(argument0 + 61, argument1 + i * 16, argument2);
		instance_create(argument0 + 69, argument1 + i * 16, argument2);
		instance_create(argument0 + 77, argument1 + i * 16, argument2);
		instance_create(argument0 + 85, argument1 + i * 16, argument2);
		instance_create(argument0 + 93, argument1 + i * 16, argument2);
	}
	instance_create(argument0 + 73, argument1 + 8, argument2);
	instance_create(argument0 + 53, argument1 + 24, argument2);
	instance_create(argument0 + 93, argument1 + 24, argument2);
	instance_create(argument0 + 53, argument1 + 40, argument2);
	instance_create(argument0 + 93, argument1 + 40, argument2);
	instance_create(argument0 + 53, argument1 + 56, argument2);
	instance_create(argument0 + 93, argument1 + 56, argument2);
	instance_create(argument0 + 53, argument1 + 82, argument2);
	instance_create(argument0 + 59, argument1 + 76, argument2);
	instance_create(argument0 + 93, argument1 + 82, argument2);
	instance_create(argument0 + 87, argument1 + 76, argument2);
	
	// left half of 張
	instance_create(argument0 + 114, argument1, argument3);
	instance_create(argument0 + 122, argument1, argument3);
	instance_create(argument0 + 130, argument1, argument3);
	instance_create(argument0 + 138, argument1, argument3);
	instance_create(argument0 + 138, argument1 + 8, argument3);
	instance_create(argument0 + 138, argument1 + 16, argument3);
	instance_create(argument0 + 138, argument1 + 24, argument3);
	instance_create(argument0 + 131, argument1 + 24, argument3);
	instance_create(argument0 + 124, argument1 + 24, argument3);
	instance_create(argument0 + 117, argument1 + 24, argument3);
	instance_create(argument0 + 117, argument1 + 32, argument3);
	instance_create(argument0 + 117, argument1 + 40, argument3);
	instance_create(argument0 + 117, argument1 + 48, argument3);
	instance_create(argument0 + 124, argument1 + 48, argument3);
	instance_create(argument0 + 131, argument1 + 48, argument3);
	instance_create(argument0 + 138, argument1 + 48, argument3);
	instance_create(argument0 + 138, argument1 + 56, argument3);
	instance_create(argument0 + 138, argument1 + 64, argument3);
	instance_create(argument0 + 136, argument1 + 72, argument3);
	instance_create(argument0 + 130, argument1 + 78, argument3);
	instance_create(argument0 + 122, argument1 + 79, argument3);
	instance_create(argument0 + 114, argument1 + 79, argument3);
	
	// right half of 張
	instance_create(argument0 + 150, argument1 + 48, argument3);
	instance_create(argument0 + 158, argument1 + 48, argument3);
	instance_create(argument0 + 166, argument1 + 48, argument3);
	instance_create(argument0 + 174, argument1 + 48, argument3);
	instance_create(argument0 + 182, argument1 + 48, argument3);
	instance_create(argument0 + 190, argument1 + 48, argument3);
	instance_create(argument0 + 198, argument1 + 48, argument3);
	instance_create(argument0 + 158, argument1 + 48, argument3);
	instance_create(argument0 + 158, argument1 + 40, argument3);
	instance_create(argument0 + 158, argument1 + 32, argument3);
	instance_create(argument0 + 158, argument1 + 24, argument3);
	instance_create(argument0 + 158, argument1 + 16, argument3);
	instance_create(argument0 + 158, argument1 + 8, argument3);
	instance_create(argument0 + 158, argument1, argument3);
	instance_create(argument0 + 166, argument1, argument3);
	instance_create(argument0 + 174, argument1, argument3);
	instance_create(argument0 + 182, argument1, argument3);
	instance_create(argument0 + 190, argument1, argument3);
	instance_create(argument0 + 198, argument1, argument3);
	instance_create(argument0 + 166, argument1 + 16, argument3);
	instance_create(argument0 + 174, argument1 + 16, argument3);
	instance_create(argument0 + 182, argument1 + 16, argument3);
	instance_create(argument0 + 190, argument1 + 16, argument3);
	instance_create(argument0 + 166, argument1 + 32, argument3);
	instance_create(argument0 + 174, argument1 + 32, argument3);
	instance_create(argument0 + 182, argument1 + 32, argument3);
	instance_create(argument0 + 190, argument1 + 32, argument3);
	instance_create(argument0 + 154, argument1 + 56, argument3);
	instance_create(argument0 + 154, argument1 + 64, argument3);
	instance_create(argument0 + 154, argument1 + 72, argument3);
	instance_create(argument0 + 151, argument1 + 80, argument3);
	instance_create(argument0 + 158, argument1 + 78, argument3);
	instance_create(argument0 + 165, argument1 + 76, argument3);
	instance_create(argument0 + 174, argument1 + 54, argument3);
	instance_create(argument0 + 178, argument1 + 62, argument3);
	instance_create(argument0 + 183, argument1 + 68, argument3);
	instance_create(argument0 + 189, argument1 + 73, argument3);
	instance_create(argument0 + 196, argument1 + 77, argument3);
	instance_create(argument0 + 190, argument1 + 62, argument3);
	
	// っ
	instance_create(argument0 + 220, argument1 + 40, argument4);
	instance_create(argument0 + 227, argument1 + 38, argument4);
	instance_create(argument0 + 234, argument1 + 36, argument4);
	instance_create(argument0 + 241, argument1 + 34, argument4);
	instance_create(argument0 + 248, argument1 + 33, argument4);
	instance_create(argument0 + 255, argument1 + 32, argument4);
	instance_create(argument0 + 263, argument1 + 32, argument4);
	instance_create(argument0 + 270, argument1 + 33, argument4);
	instance_create(argument0 + 277, argument1 + 35, argument4);
	instance_create(argument0 + 282, argument1 + 38, argument4);
	instance_create(argument0 + 286, argument1 + 44, argument4);
	instance_create(argument0 + 287, argument1 + 52, argument4);
	instance_create(argument0 + 286, argument1 + 60, argument4);
	instance_create(argument0 + 281, argument1 + 67, argument4);
	instance_create(argument0 + 275, argument1 + 72, argument4);
	instance_create(argument0 + 268, argument1 + 75, argument4);
	instance_create(argument0 + 261, argument1 + 77, argument4);
	instance_create(argument0 + 253, argument1 + 78, argument4);
	instance_create(argument0 + 245, argument1 + 79, argument4);
	instance_create(argument0 + 237, argument1 + 79, argument4);
	
	// て
	instance_create(argument0 + 304, argument1 + 17, argument5);
	instance_create(argument0 + 312, argument1 + 16, argument5);
	instance_create(argument0 + 320, argument1 + 15, argument5);
	instance_create(argument0 + 328, argument1 + 14, argument5);
	instance_create(argument0 + 336, argument1 + 13, argument5);
	instance_create(argument0 + 344, argument1 + 12, argument5);
	instance_create(argument0 + 352, argument1 + 11, argument5);
	instance_create(argument0 + 360, argument1 + 10, argument5);
	instance_create(argument0 + 354, argument1 + 16, argument5);
	instance_create(argument0 + 348, argument1 + 22, argument5);
	instance_create(argument0 + 342, argument1 + 28, argument5);
	instance_create(argument0 + 337, argument1 + 34, argument5);
	instance_create(argument0 + 333, argument1 + 41, argument5);
	instance_create(argument0 + 330, argument1 + 48, argument5);
	instance_create(argument0 + 329, argument1 + 55, argument5);
	instance_create(argument0 + 330, argument1 + 62, argument5);
	instance_create(argument0 + 333, argument1 + 69, argument5);
	instance_create(argument0 + 338, argument1 + 75, argument5);
	instance_create(argument0 + 345, argument1 + 79, argument5);
	instance_create(argument0 + 352, argument1 + 81, argument5);
}
