/// @description: P3 end sideways spawns
with(part3SideSpawner){instance_destroy();}
with(part3SidewaysApple) {
    direction = point_direction(player.x, player.y, x, y);
    speed = 15;
}

