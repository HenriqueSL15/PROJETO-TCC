if(opacityIsDecreasing){
	image_alpha -= fadeSpeed;
}else{
	image_alpha += fadeSpeed;	
	if(image_alpha >= 1 && room == LOGO){
		room_goto(rm_Menu);
	}
}	


if(room == LOGO){
	if(opacityIsDecreasing && image_alpha <= 0){
		opacityIsDecreasing = false;
	}
}