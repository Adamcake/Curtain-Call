/// @description: P4 pattern - zoom effect + teleportation
zoom.size -= 0.25;
with(part4p2WrongPlatformApple) {instance_destroy();}
with(trail) {instance_destroy();}
with(block) {instance_destroy();}
with(part4FakeBlockEff) {instance_destroy();}

var a, _x = 32*3, _y = 384;
repeat(2) {
	repeat(3) {
		a = instance_create(_x, _y, block);
		a.sprite_index = sBlockMetal;
		a.visible = true;
		a = instance_create(_x + 32, _y, block);
		a.sprite_index = sBlockMetalBar;
		a.visible = true;
		a = instance_create(_x + 64, _y, block);
		a.sprite_index = sBlockMetalBar;
		a.visible = true;
		a = instance_create(_x + 96, _y, block);
		a.sprite_index = sBlockMetalBar;
		a.visible = true;
		a = instance_create(_x + 128, _y, block);
		a.sprite_index = sBlockMetal;
		a.visible = true;
		
		a = instance_create(_x, _y, part4FakeBlockEff);
		a.sprite_index = sBlockMetal;
		a = instance_create(_x + 32, _y, part4FakeBlockEff);
		a.sprite_index = sBlockMetalBar;
		a = instance_create(_x + 64, _y, part4FakeBlockEff);
		a.sprite_index = sBlockMetalBar;
		a = instance_create(_x + 96, _y, part4FakeBlockEff);
		a.sprite_index = sBlockMetalBar;
		a = instance_create(_x + 128, _y, part4FakeBlockEff);
		a.sprite_index = sBlockMetal;
		
		_x += 32 * 7;
	}
	_y += 128;
	_x = 32*3;
}

part4WallsController.x -= 32 * 7;
with(part4WallApple) { x -= 32 * 7; }

var y_diff = 0;
with(player) {
	var old_y = y;
	x -= 32 * 7;
	y = (floor(y) % 128) + frac(y) + 416;
	xprevious = x;
	yprevious = y;
	y_diff = y - old_y;
}
zoom.top += y_diff;
zoom.bottom += y_diff;
