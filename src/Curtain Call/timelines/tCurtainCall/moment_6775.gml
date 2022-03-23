/// @description: P6 start, despawn lots of P5
var i;
alarm[3] = 1;
instance_create(0, 0, part6CRTEff);

instance_destroy(part5Background);
instance_destroy(part5BurstApple);
instance_destroy(part5DiagApple);
instance_destroy(part5BRSpawner);
instance_destroy(part2BGEff);
instance_destroy(spikeUp);
instance_destroy(spikeDown);
instance_destroy(spikeLeft);
instance_destroy(spikeRight);
instance_destroy(bossNoEdgeKill);
__view_set(e__VW.XView, 0, 0);
__view_set(e__VW.YView, 0, 0);
__view_set(e__VW.WView, 0, room_width);
__view_set(e__VW.HView, 0, room_height);

instance_create(0, 0, part6BackgroundEff);
instance_create(0, 0, part6Scanlines);
for(i = 0; i < 15; i += 1) {
	instance_create((i + 5) * 32, 32 * 2, part6Block);
}
for(i = 0; i < 5; i += 1) {
	instance_create((i + 1) * 32, 32 * 3, part6Block);
	instance_create((i + 19) * 32, 32 * 3, part6Block);
	instance_create(32, (i + 4) * 32, part6Block);
	instance_create(23 * 32, (i + 4) * 32, part6Block);
	instance_create(2 * 32, (i + 8) * 32, part6Block);
	instance_create(22 * 32, (i + 8) * 32, part6Block);
	instance_create(3 * 32, (i + 12) * 32, part6Block);
	instance_create(21 * 32, (i + 12) * 32, part6Block);
}
for(i = 0; i < 17; i += 1) {
	instance_create((i + 4) * 32, 32 * 16, part6Block);
}
instance_create(4 * 32, 12 * 32, part6Block);
instance_create(5 * 32, 12 * 32, part6Block);
instance_create(19 * 32, 12 * 32, part6Block);
instance_create(20 * 32, 12 * 32, part6Block);

with(player) { teleport(32 * 5.5, room_height - (32 * 3.5)); }
