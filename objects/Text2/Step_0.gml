/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_Player)){
			MyTxt = instance_create_layer(obj_Player.x, obj_Player.y+100, "Text", obj_TextController);
			MyTxt.text = myText;
			MyTxt.creator = self
			if(keyboard_check_pressed(ord("E"))){
				ctd +=1;
		if(ctd = 0){
			audio_play_sound(S_dialogueINROOM1, 0, 0);
		}
		if(ctd = 1){
			audio_play_sound(S_dialogueINROOM2, 0, 0);
		}
		if(ctd = 2){
			audio_play_sound(S_dialogueINROOM3, 0, 0);
			audio_stop_sound(S_dialogueINROOM2);
		}
		if(ctd = 3){
			audio_play_sound(S_dialogueINROOM4, 0, 0);
			audio_stop_sound(S_dialogueINROOM3);
		}
	}
	if(ctd >= 1){
		instance_destroy(MyTxt);
	}
}
