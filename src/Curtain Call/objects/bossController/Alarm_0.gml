/// @description  spawn intro
if(global.dbgStartPoint == 0) {
    intro = instance_create(0, 0, introSpawner);
    alarm[1] = 10;
}
