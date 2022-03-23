var a;
if(topf == 0 || fast) {
    a = instance_create(__view_get(e__VW.XView, 0) + random(__view_get(e__VW.WView, 0)), __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0) + 9, part5DiagApple);
	a.direction += 180;
	if(fast) { a.speed *= 0.76; }
	topf = irandom_range(8, 12);
}
if(leftf == 0 || fast) {
	a = instance_create(__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 9, __view_get(e__VW.YView, 0) + random(__view_get(e__VW.HView, 0)), part5DiagApple);
	a.direction += 180;
	if(fast) { a.speed *= 0.76; }
	leftf = irandom_range(8, 12);
}

f += 1;
topf -= 1;
leftf -= 1;
event_inherited();
