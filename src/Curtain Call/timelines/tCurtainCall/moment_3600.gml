/// @description: P4 circle + decorations spawn
with(block) {
    var a = instance_create(x, y, part4FakeBlockEff);
    a.sprite_index = sprite_index;
}
//instance_create(0, 0, part4BRSpawner);
p4circle1 = instance_create(room_width / 2, room_height / 2, part4p1CircleController);
p4circle1.tr = 40;
p4circle1.angle = 11.5;
