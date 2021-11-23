/// @description Insert description here
// You can write your code in this editor
#region regras iniciais
	if(instance_exists(obj_TextController)){
		exit;
	}
#endregion

#region conrtroles 
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	jump = keyboard_check(vk_space);
	//down = keyboard_check(ord("S"));
	
	moveX = right - left;
	vspd = vspd + grv;
	hspd = moveX * spd;
	
	//xscale
	
	if(hspd > 0){
		image_xscale = xscale;
	}
	if(hspd < 0){
		image_xscale = -xscale;
	}
	
	//mudar a sprite
	if(hspd > 0 || hspd < 0){
		sprite_index = spr_PlayerWalk;
	}
	else{
		sprite_index = spr_PlayerIdle;
	}
	

#endregion

if(place_meeting(x+hspd, y+vspd, obj_Collide)){
	if(right || left){
		count ++
			if(count == 25){
				count = 1;
				audio_play_sound(S_Walk, 0, 0);
			}
	}
}

#region grv e pulo
	if(place_meeting(x, y+1, obj_Collide) && jump){
		vspd -= 8; 
	}
#endregion

#region colisão
	if(place_meeting(x+hspd, y, obj_Collide)){
		while(!place_meeting(x+sign(hspd), y, obj_Collide)){
			x = x + sign(hspd);
		}
		hspd = 0;
	}
	if(place_meeting(x, y+vspd, obj_Collide)){
		while(!place_meeting(x, y+sign(vspd), obj_Collide)){
			y = y + sign(vspd);
		}
		vspd = 0;
	}
	
	if(place_meeting(x+hspd, y, obj_CollideJMPSC)){
		while(!place_meeting(x+sign(hspd), y, obj_CollideJMPSC)){
			x = x + sign(hspd);
		}
		hspd = 0;
		global.life -=1
	}
	if(place_meeting(x, y+vspd, obj_CollideJMPSC)){
		while(!place_meeting(x, y+sign(vspd), obj_CollideJMPSC)){
			y = y + sign(vspd);
		}
		vspd = 0;
		global.life -=1;
	}

	x = x + hspd;
	y = y + vspd;
#endregion

if(global.life == 0){
	room_goto(RM_Jumpscare);
}

audio_listener_position(x, y, 0);