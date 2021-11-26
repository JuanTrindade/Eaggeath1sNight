/// @description Insert description here
#region fullscreen
	if (keyboard_check_pressed(vk_f11)) {
		global.fullscreen = !global.fullscreen;
		window_set_fullscreen(global.fullscreen);
	}
#endregion