/// @description  Timer
if (global.timeTicking) {
    var dt = delta_time / 1000000;

    if (!global.timeWhileDead) {
        if(instance_exists(player)) {
            timer += dt;
        }
    } else timer += dt;


    if (timer >= 1.0) {
        while (timer > 1.0) {
            timer--;
            global.time++;
        }
        update_title();
    }
}

