/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){
			MyTxt = instance_create_layer(obj_Eggeath.x, obj_Eggeath.y+185, "Text", obj_TextController);
			MyTxt.text = myText;
			if(keyboard_check_pressed(ord("E"))){
				ctd +=1;
		}
		if(ctd = 1){
			audio_play_sound(S_dialogue1, 0, 0);
		}
		if(ctd = 2){
			audio_play_sound(S_dialogue2, 0, 0);
			audio_stop_sound(S_dialogue1);
		}
		if(ctd = 3){
			audio_play_sound(S_dialogue3, 0, 0);
			audio_stop_sound(S_dialogue2);
		}
		if(ctd = 4){
			audio_play_sound(S_dialogue4, 0, 0);
			audio_stop_sound(S_dialogue3);
		}
}
if(ctd >= 5){
	instance_destroy(obj_TextController);
	room_goto(RM_Jumpscare);
}
