/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_Player)){
			MyTxtbox = instance_create_layer(obj_Player.x, obj_Player.y+100, "Text", obj_TextController);
			MyTxtbox.text = myText;
		if(keyboard_check_pressed(ord("E"))){
		ctd +=1;
			if(ctd = 1){
				audio_play_sound(S_dialogueINROOM5, 0, 0);
			}
			if(ctd = 2){
				audio_play_sound(S_dialogueINROOM6, 0, 0);
				audio_stop_sound(S_dialogueINROOM5);
		}
	}
}
if(ctd >= 3){
	instance_destroy(obj_TextController);
}
