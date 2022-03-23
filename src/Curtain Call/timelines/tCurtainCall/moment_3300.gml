/// @description: P3 ending circle squish + decorative burst
scrPart3CircleShootout();
with(part3CircleController) {
    growspeed = -11;
    growaccel = 1;
    alarm[3] = 23;
}
instance_create(0, 0, part3ScreenBump);

