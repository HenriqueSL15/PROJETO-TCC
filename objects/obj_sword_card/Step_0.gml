if (!drag) {
	// Reseta a posição da carta caso seja um local inválido
	if (x + (sprite_width / 2) <= 284 || y >= 672) {
		x = x_padrao
		y = y_padrao
	}else{
	// Troca a sprite da carta
	
		if(sprite_index != spr_sword){
			sprite_index = spr_sword
			canBeDraged = false
		}
	
		
		if(place_meeting(x,y,obj_spawn)){
			obj_spawn.life --;
		}
	x+=spd	
	}
}else{
	// Arrasta a carta
	x = mouse_x + xx;
	y = mouse_y + yy;
}