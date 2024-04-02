//Se não estiver seguindo ninguém
if(follow != noone){
	xTo = follow.x
	yTo = follow.y - 44
}

//Altera a posição atual
x += (xTo - x)/25
y += (yTo - y)/25

//Posição da câmera
camera_set_view_pos(view_camera[0],x-(camWidth*0.5),y-(camHeight*0.5))