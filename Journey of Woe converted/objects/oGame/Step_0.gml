/// @description Insert description here
// You can write your code in this editor
	if (global.hp <= 0 ) {
		game_end();
	}
	
//Music, place in game when working
    if (room = level1) {
    audio_play_sound(music1, 1, true);
	}
	
	if(global.boss1slain = true) {
		room = level2;
	}
	
	if (room = level2) and (oPlayer.x >= 4083) {
		room = level3;
	}
	
	if (room = level3) and (oPlayer.x >= 4083) {
		room = level4;
	}