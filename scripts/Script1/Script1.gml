// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function States_off(){

attack = keyboard_check_pressed(ord("C"))
var dash_btn = keyboard_check_pressed(ord("X"))


	//dash
	if (dash_btn) and dash {
		
		if(sprite_index == spr_playerRight){
            dash_dir = 0
        }else if(sprite_index == spr_playerLeft){
            dash_dir = 180
        }else if(sprite_index == spr_playerDown){
            dash_dir = 270
        }else if(sprite_index == spr_playerUp){
            dash_dir = 90
        }
		
		if(right && up && !down && !left){
			dash_dir = 45
		}else if(right && !up && down && !left){
			dash_dir = 315
		}else if(!right && up && !down && left){
			dash_dir = 135
		}else if(!right && !up && down && left){
			dash_dir = 225
		}
				
		dash = false;
		alarm[2] = dash_timer;
		alarm[1] = dash_delay;
		states = state_dash;
	}
}
function state_dash(){	
		
hspd = lengthdir_x(dash_vspd, dash_dir);
vspd = lengthdir_y(dash_vspd, dash_dir);

if(place_meeting(x+hspd,y,obj_player.walls)){
    while(!place_meeting(x+sign(hspd),y,obj_player.walls)){
        x = x + sign(hspd)
    }
    hspd = 0
}

x += hspd;

if(place_meeting(x,y+vspd,obj_player.walls)){
    while(!place_meeting(x,y+sign(vspd),obj_player.walls)){
        y = y + sign(vspd)
    }
    vspd = 0
}

y += vspd;
}

