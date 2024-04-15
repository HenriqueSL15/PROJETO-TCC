if (!drag) {
	// Reseta a posição da carta caso seja um local inválido
	if (x + (sprite_width / 2) >= 1344 || y >= 672) {
		x = x_padrao
		y = y_padrao
	}else{
	// Troca a sprite da carta
		if(sprite_index != spr_fire_ball_explosion){
			sprite_index = spr_fire_ball_explosion
			canBeDraged = false
		}
	}
}else{
	// Arrasta a carta
	x = mouse_x + xx;
	y = mouse_y + yy;
}