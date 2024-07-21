// Reseta a posição da carta caso seja um local inválido
if (x + (sprite_width / 2) <= 284 || y >= 672) {
	instance_destroy()
}else{
	// Troca a sprite da carta
	if(sprite_index != spr_lightning){
		sprite_index = spr_lightning
		canBeDraged = false
	}
	if(place_meeting(x,y,obj_spawn)){
		obj_spawn.life --;
	}
	
}

if (!drag){
	if(instance_number(obj_lightning_card) + instance_number(obj_lightning_card_side) < 3){
		show_debug_message(obj_lightning_card.y)
		if(y == 406){
			if(x == 530){
				instance_create_layer(x + incremento, 330, "HABILIDADES",obj_lightning_card_side)
			}else if(x == 530 + (220 * 4)){
				instance_create_layer(x - incremento, 330, "HABILIDADES",obj_lightning_card_side)	
			}else{
				instance_create_layer(x + incremento, 330, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x - incremento, 330, "HABILIDADES",obj_lightning_card_side)	
			}
		}else if(y == 290){
			if(x == 530){
				instance_create_layer(x + incremento, 180, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x + incremento, 406, "HABILIDADES",obj_lightning_card_side)
			}else if(x == 530 + (220 * 4)){
				instance_create_layer(x - incremento, 180, "HABILIDADES",obj_lightning_card_side)	
				instance_create_layer(x - incremento, 406, "HABILIDADES",obj_lightning_card_side)
			}else{
				instance_create_layer(x - incremento, 180, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x + incremento, 180, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x - incremento, 406, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x + incremento, 406, "HABILIDADES",obj_lightning_card_side)	
			}
		}else if(y == 180){
			if(x == 530){
				instance_create_layer(x + incremento, 330, "HABILIDADES",obj_lightning_card_side)
			}else if(x == 530 + (220 * 4)){
				instance_create_layer(x - incremento, 330, "HABILIDADES",obj_lightning_card_side)
			}else{
				instance_create_layer(x + incremento, 330, "HABILIDADES",obj_lightning_card_side)
				instance_create_layer(x - incremento, 330, "HABILIDADES",obj_lightning_card_side)	
			}
		}
	}	
}