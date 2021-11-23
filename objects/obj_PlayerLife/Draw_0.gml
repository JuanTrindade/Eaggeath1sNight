/// @description Insert description here
// You can write your code in this editor
draw_set_font(F_Life);

draw_set_halign(fa_center);
draw_set_color(c_white);

var text = global.life;

draw_text(obj_Player.x, obj_Player.y-40, text);