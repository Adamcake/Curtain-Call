/// @description: P4 spawn
alarm[3] = 1;
instance_create(0, 0, part3EndFlash);
with(part3CircleController) {
    instance_destroy();
}
with(part3end6ShootoutApple) {
    instance_destroy();
}
with(introPinkCircle) {
    instance_destroy();
}
with(part3CircleApple) {
    instance_destroy();
}
with(part3end6Killer) {
    instance_destroy();
}
with(part3end6Fake) {
    instance_destroy();
}
with(part3SideAppleDrawer) {
    instance_destroy();
}
with(bossCircleShadow) {
    instance_destroy();
}

var a;
var b = 3;
repeat(5) {
    a = instance_create(32*3, 32*b, block);
    a.sprite_index = sBlockMetal;
    a.visible = true;
    a = instance_create(32*4, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*5, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*6, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*7, 32*b, block);
    a.sprite_index = sBlockMetal;
    a.visible = true;
    b += 3;
}

b = 3;
repeat(4) {
    a = instance_create(32*10, 32*b, block);
    a.sprite_index = sBlockMetal;
    a.visible = true;
    a = instance_create(32*11, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*12, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*13, 32*b, block);
    a.sprite_index = sBlockMetalBar;
    a.visible = true;
    a = instance_create(32*14, 32*b, block);
    a.sprite_index = sBlockMetal;
    a.visible = true;
    b += 4;
}

with(player) { teleport(432, 343); }
player.vspeed = 0;
instance_create(0, 0, part4BackgroundEff);
instance_create(684, 342, part4Miku);

__view_set( e__VW.XView, 0, 0);
__view_set( e__VW.YView, 0, 0);
__view_set( e__VW.WView, 0, 800);
__view_set( e__VW.HView, 0, 608);
