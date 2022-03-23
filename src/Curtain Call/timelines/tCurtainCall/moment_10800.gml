/// @description: P10 unfreeze player, start credits
instance_destroy(blockPlayerAnim);
instance_create(0, 0, part10CameraSlideRight);
instance_create(room_width - 90, room_height + 8, part10Credits);
instance_create(0, 0, part10Spawner1);
