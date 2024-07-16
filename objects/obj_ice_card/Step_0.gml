// Troca a sprite da carta
if(sprite_index != spr_ice){
		sprite_index = spr_ice
		canBeDraged = false
}
		
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}


show_debug_message(i)