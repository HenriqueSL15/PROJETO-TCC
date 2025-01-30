if (global.paused) {
    return;
}

if (!drag) {
		if(place_meeting(x,y,obj_spawn)){
			obj_spawn.life --;
		}

		// Troca a sprite da carta
		if(sprite_index == spr_barrel){
			sprite_index = spr_poison_card_1
		}else if(sprite_index != spr_barrel){
			if (i < 30) {	
				i++
			}else{
				sprite_index = spr_poison_card_1
				//x = x - 32
				i = 0
			}
			canBeDraged = false
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