/// @description Insert description here
// You can write your code in this editor
draw_sprite(spr_TextBox, 0, x, y);

//Texto
draw_set_font(F_Text);
charcount += 1;
textType = string_copy(text[page], 1, ceil(charcount));
draw_text_ext(x, y, textType, stringHeight_, boxWidth_); 