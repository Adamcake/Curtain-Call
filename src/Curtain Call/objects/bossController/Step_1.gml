if(started) {
    if(!instance_exists(player)) {
        audio_stop_sound(music);
        timeline_running = false;
    }
}

if(startsong) {
	music = play_sound(sndCurtainCall);
	startsong = false;
	started = true;
}

if(started) {
	if(abs((audio_sound_get_track_position(music) * 50) - timeline_position) > 3.125) {
		audio_sound_set_track_position(music, timeline_position / 50);
	}
}
