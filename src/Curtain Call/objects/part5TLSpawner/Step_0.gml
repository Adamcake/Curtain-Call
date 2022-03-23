var a;
if(topf == 0 && !ending) {
    a = instance_create(__view_get(e__VW.XView, 0) + random(__view_get(e__VW.WView, 0)), __view_get(e__VW.YView, 0) - 9, part5DiagApple);
	a.group = group;
	group = !group;
	topf = irandom_range(7, 12);
}
if(leftf == 0 && !ending) {
	a = instance_create(__view_get(e__VW.XView, 0) - 9, __view_get(e__VW.YView, 0) + random(__view_get(e__VW.HView, 0)), part5DiagApple);
	a.group = group;
	group = !group;
	leftf = irandom_range(7, 12);
}

f += 1;
topf -= 1;
leftf -= 1;
event_inherited();
