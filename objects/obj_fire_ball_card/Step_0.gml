if (!drag) {
	// Reseta a posição da carta caso seja um local inválido
	if (x + (sprite_width / 2) <= 284 || y >= 672) {
		x = x_padrao
		y = y_padrao
	}else{
		// Troca a sprite da carta
		if(sprite_index != spr_fire_ball_explosion){
			if (i < 60) {	
				i++
			}else{
				sprite_index = spr_fire_ball_explosion
				i = 0
			}
			canBeDraged = false
		}
		
		if(place_meeting(x,y,obj_spawn)){
			obj_spawn.life --;
		}

	}
}else{
	// Arrasta a carta
	x = mouse_x + xx;
	y = mouse_y + yy;
}

/*		var linha_esquerda = instance_nearest(x - 1, y, LINHA); // Supondo que -1000 é uma posição distante da esquerda
		var linha_direita = instance_nearest(x + 1, y, LINHA); // Supondo que +1000 é uma posição distante da direita

		// Calcule as distâncias da "CARTA" para as linhas mais à esquerda e à direita
		var distancia_esquerda = point_distance(x, y, linha_esquerda.x, linha_esquerda.y);
		var distancia_direita = point_distance(x, y, linha_direita.x, linha_direita.y);

		// Verifique se as distâncias são iguais
		if (distancia_esquerda == distancia_direita) {
		    show_debug_message("A distância da CARTA para a esquerda é igual à distância para a direita.");
		} else {
		    show_debug_message("A distância da CARTA para a esquerda não é igual à distância para a direita.");
		}*/