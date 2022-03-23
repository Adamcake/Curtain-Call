/// @description  start timeline and song
if(instance_exists(player)) {
	timeline_index = tCurtainCall;
	timeline_loop = false;
	timeline_running = true;

	if(global.dbgStartPoint == 0) {
		startsong = true;
	} else {
		music = play_sound(sndCurtainCall);
		started = true;
	}
	
	if(global.debug || global.dbgStartPoint != 0) {
		with(player) { die(); }
	}
	/*
	switch(global.dbgStartPoint) {
		case 1:
		    var a = instance_create(0, 0, part2BG);
		    a.image_blend = make_colour_hsv(0, 32.9, 255);
		    a.image_xscale = 25;
		    a.image_yscale = 19;
		    timeline_position = 1189;
			a = instance_create(0, room_height - 32, part2Floor);
			a.move = false;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 2:
		    var a = instance_create(0, 0, part2BG);
		    a.image_blend = make_colour_hsv(0, 32.9, 255);
		    a.image_xscale = 25;
		    a.image_yscale = 19;
		    timeline_position = 1899;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 3:
		    timeline_position = 3587;
		    player.x = room_width/2;
		    player.y = 100;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 4:
			var a;
			var b = 3;
			repeat(5) {
			    a = instance_create(32*3, 32*b, block);
			    a.sprite_index = sBlockMetal;
			    a.visible = true;
			    a = instance_create(32*4, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*5, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*6, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*7, 32*b, block);
			    a.sprite_index = sBlockMetal;
			    a.visible = true;
			    b += 3;
			}

			b = 3;
			repeat(4) {
			    a = instance_create(32*10, 32*b, block);
			    a.sprite_index = sBlockMetal;
			    a.visible = true;
			    a = instance_create(32*11, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*12, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*13, 32*b, block);
			    a.sprite_index = sBlockMetalBar;
			    a.visible = true;
			    a = instance_create(32*14, 32*b, block);
			    a.sprite_index = sBlockMetal;
			    a.visible = true;
			    b += 4;
			}

			instance_create(0, 0, part4BackgroundEff);
			instance_create(684, 342, part4Miku);

		    timeline_position = 4387;
		    player.x = 464;
		    player.y = 215;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			alarm[2] = 1;
			break;
		case 5:
		    timeline_position = 5199;
		    player.x = room_width/2;
		    player.y = 100;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 6:
			instance_create(0, 0, part5Background);
		    timeline_position = 6774;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 7:
		    timeline_position = 7563;
			player.x = room_width/2;
		    player.y = 224;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 8:
		    timeline_position = 8386;
			player.x = room_width/2;
		    player.y = 450;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
		case 9:
		    timeline_position = 9961;
			(instance_create(0, 0, part8BgEff)).hue = (256 * 1574 / 200) % 255;
			with(bossSpawnBlock) { instance_destroy(); }
		    audio_sound_set_track_position(music, (timeline_position-1)/50);
			break;
	}*/
}
