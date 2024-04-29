// Troca a sprite da carta
if(sprite_index != spr_shield){
		sprite_index = spr_shield
		canBeDraged = false
}
		
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}