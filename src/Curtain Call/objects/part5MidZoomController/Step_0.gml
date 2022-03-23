var ratio;
if(f <= 12) {
	ratio = 1 - EaseOutQuad(f, 0, 0.5, 12);
} else {
	ratio = 0.5 + EaseInQuad(f - 12, 0, target - 0.5, 25);
}

var oldwidth = __view_get(e__VW.WView, 0);

__view_set(e__VW.XView, 0, (room_width / 2) - ((room_width / 2 - startx) * ratio));
__view_set(e__VW.YView, 0, (room_height / 2) - ((room_height / 2 - starty) * ratio));
__view_set(e__VW.WView, 0, startw * ratio);
__view_set(e__VW.HView, 0, starth * ratio);

if(f > 12) {
	part5BoundStarController.r += __view_get(e__VW.WView, 0) - oldwidth;
}

f += 1;
if(f > 37) {
	instance_destroy(blockPlayerAnim);
	instance_destroy(part5BoundStarController);
	with(part5BoundStarApple) {
		direction = point_direction(room_width / 2, room_height / 2, x, y);
		speed = point_distance(room_width / 2, room_height / 2, x, y) / 15;
		alarm[0] = 25;
	}
	with(instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) - 36, spikeUp)) {
		visible = false;
		image_xscale = __view_get(e__VW.WView, 0) / 32;
	}
	with(instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) + 4, spikeDown)) {
		visible = false;
		image_xscale = __view_get(e__VW.WView, 0) / 32;
	}
	with(instance_create(__view_get(e__VW.XView, 0) - 36, __view_get(e__VW.YView, 0), spikeLeft)) {
		visible = false;
		image_yscale = __view_get(e__VW.HView, 0) / 32;
	}
	with(instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 4, __view_get(e__VW.YView, 0), spikeRight)) {
		visible = false;
		image_yscale = __view_get(e__VW.HView, 0) / 32;
	}
	instance_destroy();
}
