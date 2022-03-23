/// @description: P4 spawn black circle
var a, d, i;
d = random(360);
for(i = 0; i < 36; i += 1) {
  a = instance_create(part4Miku2.x, part4Miku2.y, part4p4AccelApple);
  a.speed = 8;
  a.direction = d + (i * 360 / 36);
  a.image_blend = c_black;
}
