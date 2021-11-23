/// @description Insert description here
// You can write your code in this editor
s_emmit = audio_emitter_create();
audio_falloff_set_model(audio_falloff_exponent_distance);
audio_emitter_falloff(s_emmit, 30, 200, 1);
alarm[0] = room_speed * 0.6;