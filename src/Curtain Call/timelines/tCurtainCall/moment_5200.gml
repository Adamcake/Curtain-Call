/// @description: P4 end, P5 spawn
with(trail) {instance_destroy();}
with(part4BackgroundFruitEff) {instance_destroy();}
with(part4BackgroundEff) {instance_destroy();}
with(part4FakeBlockEff) {instance_destroy();}
with(bossCircleShadow) {instance_destroy();}
with(block) {instance_destroy();}
with(part4Miku2) {instance_destroy();}
with(part4p3ColourController) {instance_destroy();}
with(part4p3LinearApple) {instance_destroy();}

with(player) { teleport(room_width / 2, room_height / 2); }
player.vspeed = 1;
player.sprite_index = sPlayerFall;
instance_create(player.x - 16, player.y - 16, blockPlayerAnim);
instance_create(0, 0, part5Background);
instance_create(player.x, player.y, part5ZoomController);
instance_create(180, 180, part5Follow);
