/// @description: P4 attack end, walls spawn
with(part4TRSpawner) {instance_destroy();}
instance_create(room_width/2, room_height/2, part4WallsController);

