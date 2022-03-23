/// @description: P9 end, P10 spawn
if(instance_exists(player)) {
	player.sprite_index = sPlayerFall;
	instance_create(player.x - 16, player.y - 10, blockPlayerAnim);
}

instance_destroy(part9CircleController);
instance_destroy(part9CircleApple);

var a = instance_create(96, 0, block);
a.sprite_index = sBlockMetal;
a.visible = true;
a.depth = -4;
a = instance_create(room_width - 128, 0, block);
a.sprite_index = sBlockMetal;
a.visible = true;
a.depth = -4;
a = instance_create(96, room_height - 32, block);
a.sprite_index = sBlockMetal;
a.visible = true;
a.depth = -4;
a = instance_create(room_width - 128, room_height - 32, block);
a.sprite_index = sBlockMetal;
a.visible = true;
a.depth = -4;
for(var i = 0; i < 17; i += 1) {
	a = instance_create(i * 32 + 128, 0, block);
	a.sprite_index = sBlockMetalBar;
	a.visible = true;
	a.depth = -4;
	a = instance_create(i * 32 + 128, room_height - 32, block);
	a.sprite_index = sBlockMetalBar;
	a.visible = true;
	a.depth = -4;
}
for(var i = 0; i < 17; i += 1) {
	a = instance_create(96, i * 32 + 32, block);
	a.sprite_index = sBlockMetalBar2;
	a.visible = true;
	a.depth = -4;
	a = instance_create(room_width - 128, i * 32 + 32, block);
	a.sprite_index = sBlockMetalBar2;
	a.visible = true;
	a.depth = -4;
}
