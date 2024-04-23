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