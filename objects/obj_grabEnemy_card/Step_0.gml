if (!drag) {
		if(place_meeting(x,y,obj_spawn)){
			obj_spawn.life --;
		}
		
		if (level == 1){
		
		if (otherObject != 0){
			if(typeOfEnemy == 0){
				typeOfEnemy = otherObject.type	
				instance_destroy(otherObject)
				image_alpha = 0
			}
		}

				

		// Troca a sprite da carta
		if(sprite_index == spr_grabEnemy_card){
			sprite_index = spr_grabEnemy_card
		}else if(sprite_index != spr_fire_ball_card){
			if (i < 30) {	
				i++
			}else{
				sprite_index = spr_grabEnemy_card
				//x = x - 32
				i = 0
			}
			canBeDraged = false
		}

		}else if(level == 2){
			if(collision == false){
		if(otherObject.numeracao >= 1 && otherObject.numeracao <= 5){
			//show_debug_message("Entre 1 e 5")
			if (otherObject.numeracao == 1){
				newX = x1 + incremento
			}else if (otherObject.numeracao == 2){
				newX = x1 + incremento
			} else if (otherObject.numeracao == 3){
				newX = x1 + (incremento * 2)
			} else if (otherObject.numeracao == 4){
				newX = x1 + (incremento * 3)
			} else if (otherObject.numeracao == 5){
				newX = x1 + (incremento * 3)
			}
		}else if(otherObject.numeracao > 5 && otherObject.numeracao <= 10){
			//show_debug_message("Entre 5 e 10")
			if (otherObject.numeracao == 6){
				newX = x1 + incremento
			}else if (otherObject.numeracao == 7){
				newX = x1 + incremento
			} else if (otherObject.numeracao == 8){
				newX = x1 + (incremento * 2)
			} else if (otherObject.numeracao == 9){
				newX = x1 + (incremento * 3)
			} else if (otherObject.numeracao == 10){
				newX = x1 + (incremento * 3)
			}
		}else if(otherObject.numeracao > 10){
			//show_debug_message("Entre 10 e 15")
			if (otherObject.numeracao == 11){
				newX = x1 + incremento
			}else if (otherObject.numeracao == 12){
				newX = x1 + incremento
			} else if (otherObject.numeracao == 13){
				newX = x1 + (incremento * 2)
			} else if (otherObject.numeracao == 14){
				newX = x1 + (incremento * 3)
			} else if (otherObject.numeracao == 15){
				newX = x1 + (incremento * 3)
			}
		}
		}
		direction = radtodeg(arctan2(y - newY, x - newX))
		
		if(point_distance(x,y,newX,newY) > 10){
			stopped = false
			x += lengthdir_x(20,direction)
			y += lengthdir_y(20,direction)
		}else{
			stopped = true
			image_angle = 0
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