/// @description  Emit blood

repeat (30) {
    with (instance_create(x, y, blood)) {
        gravity = (0.1 + random(0.2)) * global.pGravity;
        direction = random(360);
        speed = random(8);
    }
}


