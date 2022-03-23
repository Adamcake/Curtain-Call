rspeed += raccel;
r += rspeed;
edgesize += edgespeed;

if(instance_exists(player)) {
	if(point_distance(x, y, player.x, player.y) > r + edgesize + 10) {
		with(player) { if(!global.god) { die(); } }
	}
}

repeat(2) {
	instance_create(x, y, part6SpotParticle);
}
