var a;
for(var i = 0; i < 8; i++) {
    if point_in_rectangle(circlers[i].x, circlers[i].y, 0, 0, room_width, room_height) {
        a = instance_create(circlers[i].x, circlers[i].y, introEndBGColourer);
        a.growSpeed = colourerGrowSpeed;
    }
}
colourerGrowSpeed += 0.01;
alarm[3] = 1 + (radius < 90);
