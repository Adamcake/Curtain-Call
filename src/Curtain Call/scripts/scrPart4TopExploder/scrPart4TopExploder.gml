// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrPart4TopExploder(){
	var a;
	if(instance_exists(player)) {
		a = instance_create(-12, player.y, part4p2Exploder);
		a.direction = 0;
		a.speed = 7;
	}
}
