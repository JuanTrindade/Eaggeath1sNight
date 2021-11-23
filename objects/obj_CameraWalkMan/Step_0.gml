/// @description Insert description here
// You can write your code in this editor
//interpolação da camera
x = lerp(x, target_.x, 0.1);
y = lerp(y, target_.y-height_/8, 0.1);
camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);