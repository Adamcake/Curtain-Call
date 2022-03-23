var a, _x, _y;
if(f == 0 || f == 6 || f == 12 || f == 18) {
	factor -= jump_factor;
}

if(f == 18) {
	with(block) { instance_destroy(); }
	with(part4FakeBlockEff) { instance_destroy(); }
	for(_y = 320; _y <= 448; _y += 128) {
		for(_x = 96; _x <= 320; _x += 224) {
			a = instance_create(_x, _y, block);
		    a = instance_create(_x + 32, _y, block);
		    a = instance_create(_x + 64, _y, block);
		    a = instance_create(_x + 96, _y, block);
			
			a = instance_create(_x, _y, part4FakeBlockEff);
		    a.sprite_index = sBlockMetal;
		    a = instance_create(_x + 32, _y, part4FakeBlockEff);
		    a.sprite_index = sBlockMetalBar;
		    a = instance_create(_x + 64, _y, part4FakeBlockEff);
		    a.sprite_index = sBlockMetalBar;
		    a = instance_create(_x + 96, _y, part4FakeBlockEff);
		    a.sprite_index = sBlockMetal;
		}
	}
	if(l) {
		offset_x = -224;
	} else {
		offset_x = -256;
	}
	offset_y = 96;
	player.x += offset_x;
	player.y += offset_y;
	player.xprevious = player.x;
	player.yprevious = player.y;
	for(i = 0; i <= 23; i += 1) {
		part4p3EndWallController.lgreen[i].x += offset_x;
		part4p3EndWallController.rgreen[i].x += offset_x;
	}
	with(part4p3SquaresController) {
		x += other.offset_x;
		y += other.offset_y;
	}
	with(part4BackgroundFruitEff) {
		x += other.offset_x;
		y += other.offset_y;
	}
	with(bossCircleShadow) {
		x += other.offset_x;
		y += other.offset_y;
	}
	
	with(part4p3EndWallController) { instance_destroy(); }
	(instance_create(656, 192, part4Miku2)).f = part4Miku.f;
	with(part4Miku) { instance_destroy(); }
	instance_create(player.x - 16, player.y - 16, blockPlayerAnim);
}

if(f == 25) {
	xr = offset_x;
	yr = offset_y;
}

if(f >= 25) {
	offset_x = xr - EaseInOutQuad(min(f - 25, 50), 0, xr, 50);
	offset_y = yr - EaseInOutQuad(min(f - 25, 50), 0, yr, 50);
	__view_set(e__VW.Angle, 0, EaseOutBack(min(f - 25, 62), 0, 360, 62));
}

if(f >= 50) {
	zoom_out_factor = max(zoom_out_factor - 0.000125, 0);
}

if(f == 87) {
	__view_set(e__VW.XView, 0, 0);
	__view_set(e__VW.YView, 0, 0);
	__view_set(e__VW.WView, 0, room_width);
	__view_set(e__VW.HView, 0, room_height);
	instance_destroy();
	exit;
}

__view_set(e__VW.XView, 0, (tx - (twh / 2)) * (1 - factor) + offset_x);
__view_set(e__VW.YView, 0, (ty - (twh / 2)) * (1 - factor) + offset_y);
__view_set(e__VW.WView, 0, twh + ((room_width - twh) * factor));
__view_set(e__VW.HView, 0, twh + ((room_height - twh) * factor));

factor = min(zoom_out_factor + factor, 1);
if(instance_exists(player)) {
	f += 1;
}
