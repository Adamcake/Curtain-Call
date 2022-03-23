if(global.dbgStartPoint == 0) {
    alarm[0] = 10;
	if(global.death < 1) {
		alarm[3] = 1;
	}
}
else {
    alarm[1] = 1;
}
global.infiniteJump = true;
global.timeTicking = true;
startsong = false;
started = false;
