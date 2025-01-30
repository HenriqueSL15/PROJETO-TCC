if(mouse_x >= x && mouse_x <= x + sprite_get_width(spr_restartButton) &&
	mouse_y <= y + sprite_get_height(spr_restartButton) && mouse_y >= y){
	image_index = 1
}else{
	image_index = 0	
}

if(image_alpha < 1){
	image_alpha += 0.03
}