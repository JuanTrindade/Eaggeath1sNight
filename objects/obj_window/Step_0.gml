/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left)){
	if(alarm[0] = room_speed <= 10 && image_index != 0){
		audio_play_sound(S_window, 0, 0);
		image_index = 0
		alarm[0] = room_speed *120;
		alarm[1] = room_speed *140;
		alarm[2] = room_speed *150;
	}
}
