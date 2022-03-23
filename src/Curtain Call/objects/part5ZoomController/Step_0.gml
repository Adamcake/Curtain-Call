if(f < 50) {
    f += 1;
    var scale = EaseOutQuad(f, 0.0, 0.5, 50);
    var xscale = scale * room_width;
    var yscale = scale * room_height;
    __view_set( e__VW.XView, 0, x - (xscale / 2) );
    __view_set( e__VW.YView, 0, y - (yscale / 2) );
    __view_set( e__VW.WView, 0, xscale );
    __view_set( e__VW.HView, 0, yscale );
}

if(f >= 50) {
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
