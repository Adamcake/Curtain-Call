/// @description: P6 despawn, P7 spawn
with(part6Spotlight) {
	raccel = 0.95;
	edgespeed = 1.5;
}
with(part6Apple) { speed *= 2.5; }
with(part6BackgroundEff) { fadeout = true; }
with(part6Scanlines) { fadeout = true; }
instance_destroy(part6Miku);
instance_destroy(part6Block);

with(instance_create(304, 128, block)) { sprite_index = sBlockMetal; visible = true; top = true; }
with(instance_create(464, 128, block)) { sprite_index = sBlockMetal; visible = true; top = true; }
with(instance_create(304, 288, block)) { sprite_index = sBlockMetal; visible = true; top = false; }
with(instance_create(464, 288, block)) { sprite_index = sBlockMetal; visible = true; top = false; }

for(var i = 0; i < 4; i += 1) {
	with(instance_create(336 + (32 * i), 128, block)) { sprite_index = sBlockMetalBar; visible = true; top = true; }
	with(instance_create(336 + (32 * i), 288, block)) { sprite_index = sBlockMetalBar; visible = true; top = false; }
	with(instance_create(464, 160 + (32 * i), block)) { sprite_index = sBlockMetalBar2; visible = true; top = false; }
	with(instance_create(304, 160 + (32 * i), block)) { sprite_index = sBlockMetalBar2; visible = true; top = false; }
}

instance_create(room_width / 2, 224, part7BgEff);
