/// @description: P3 side-spawner, burst #1, floor despawn
instance_create(0, 0, part3SideSpawner);
instance_create(0, 0, part3SideAppleDrawer);
with(part2Floor) { instance_destroy(); }
scrPart3CircleBurst1();

