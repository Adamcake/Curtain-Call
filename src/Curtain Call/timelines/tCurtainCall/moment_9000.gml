/// @description: P8 despawn side spawner, move star
instance_destroy(part8p2SideSpawner);
part8p2TiltEff.ending = true;

var d = (room_height / 2) - part8p2StarController.y;
part8p2StarController.rotspeed = -3;
part8p2StarController.direction = 270;
part8p2StarController.speed = d * 2 / 25;
part8p2StarController.friction = part8p2StarController.speed / 25;
