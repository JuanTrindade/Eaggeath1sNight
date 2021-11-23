/// @description Insert description here
// You can write your code in this editor
#region fullscreen
	if(keyboard_check_pressed(vk_f11) && global.fullscreen = 0){
		window_set_fullscreen(true);
		global.fullscreen = 1
	}
	
	else if(keyboard_check_pressed(vk_f11) && global.fullscreen = 1){
		window_set_fullscreen(false);
		global.fullscreen = 0;
	}
#endregion