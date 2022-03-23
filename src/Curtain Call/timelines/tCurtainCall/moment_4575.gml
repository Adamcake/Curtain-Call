/// @description: P4 pattern - markers -> killers
with(part4p2RMarker) {
	//alarm[0] = max(((room_height * 5 / 6) - y) * 25 / (room_height * 2 / 3), 1);
	event_perform(ev_alarm, 0);
}
