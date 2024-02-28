//segui personagem
dir = point_direction(x, y, obj_player.x, obj_player.y)
hspd = lengthdir_x(spd, dir);
vspd = lengthdir_y(spd, dir);

x += hspd;
y += vspd;

//colisao

if(movable){
if(place_meeting(x+hspd,y,[obj_wall])){
	while(!place_meeting(x+sign(hspd),y,[obj_wall])){
		x = x + sign(hspd)
	}
	hspd = 0
}



if(place_meeting(x,y+vspd,[obj_wall])){
	while(!place_meeting(x,y+sign(vspd),[obj_wall])){
		y = y + sign(vspd)
	}
	vspd = 0
}

y = y + vspd

}