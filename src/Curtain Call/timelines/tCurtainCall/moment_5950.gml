/// @description: P5 star stop, player freeze
part5BoundStarController.rspeed = 0;
part5BoundStarController.turnspeed = 0;
part5Background.d = true;
player.sprite_index = sPlayerFall;
instance_create(0, 0, bossNoEdgeKill);
instance_create(player.x - 16, player.y - 16, blockPlayerAnim);
instance_create(0, 0, part5MidZoomController);
instance_destroy(spikeUp);
instance_destroy(spikeDown);
instance_destroy(spikeLeft);
instance_destroy(spikeRight);
