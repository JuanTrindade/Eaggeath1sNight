/// @description Insert description here
// You can write your code in this editor
//centralizando o texto
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	text = "um texto com muitos caracteres sendo ums string, com muitos caractertes, tenho que preencher essa string com o maximo de caractere possivelkkksaaassaaassaaasssaaasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";

//quantidade de paginas e contador de caracteres	
	page = 0;
	charcount = 0;

//tamanho da caixa de texto e não quebrar as linhas do texto na textbox
	boxWidth_ = sprite_get_width(spr_TextBox);
	stringHeight_ = string_height(text);
	
	creator = noone