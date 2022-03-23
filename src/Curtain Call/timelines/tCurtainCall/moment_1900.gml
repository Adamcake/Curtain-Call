/// @description: P2 background destroy, P3 circle spawn
instance_create(room_width/2, room_height/2, part3CircleController);
with(part2BG) {instance_destroy();}

with(part2RightSpawner) { m = 5; }
