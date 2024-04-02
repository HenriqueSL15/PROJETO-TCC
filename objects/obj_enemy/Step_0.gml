
dir = point_direction(x, y, obj_player.x, obj_player.y)
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);



//colisao

if(movable){
if(place_meeting(x+hspd,y,[obj_wall])){
	while(!place_meeting(x+sign(hspd),y,[obj_wall])){
		x = x + sign(hspd)
	}
	hspd = 0
}

x += hspd;

if(place_meeting(x,y+vspd,[obj_wall])){
	while(!place_meeting(x,y+sign(vspd),[obj_wall])){
		y = y + sign(vspd)
	}
	vspd = 0
}

y = y + vspd

}

//dash


if(dash == false){
	alarm[0] = room_speed * 3;
	dash = true
	alarm[1] = room_speed * 4;
}

