switch(mode) {
	case 0:
		with(instance_create(room_width / 2, room_height / 2, lobbyApple0)) {
			image_blend = make_colour_hsv(other.f mod 255, 255, 255);
		}
		break;
	case 1:
		with(instance_create(random(room_width), random(room_height), lobbyApple1)) {
			image_blend = make_colour_hsv(other.f mod 255, 255, 255);
		}
		break;
	case 2:
		if(f == 0) {
			star(room_width / 2, room_height / 2, lobbyApple2, 13, 90, 9.5);
		}
		with(lobbyApple2) {
			image_blend = make_colour_hsv(other.f mod 255, 225, 255);
		}
		break;
	case 3:
		with(instance_create(random(room_width), -13, lobbyApple3)) {
			image_blend = make_colour_hsv(other.f mod 255, 255, 255);
		}
		break;
	case 4:
		if(f mod 20 == 0) {
			var d = random(360);
			for(var i = 0; i < 22; i += 1) {
				var a = instance_create(room_width / 2, room_height / 2, lobbyApple4);
				a.direction = d + i * 360 / 22;
				a.speed = 8.5;
				a.curve = alternate * 4 - 2;
				a.image_blend = make_colour_hsv(f mod 255, 255, 255);
			}
			alternate = !alternate;
		}
		break;
}

with(roomSwitch) { image_blend = make_colour_hsv(other.f mod 255, 35, 255); }

f += 1;
