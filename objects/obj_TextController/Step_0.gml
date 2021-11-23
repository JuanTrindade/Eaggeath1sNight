/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){
	if(charcount < string_length(text[page])){
		charcount = string_length(text[page])
	}
	else if(page +1 < array_length_1d(text)){
		page +=1
		charcount = 0;
	}
	else{
		instance_destroy();
	}
}