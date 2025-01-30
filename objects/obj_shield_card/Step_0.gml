if (global.paused) {
    return;
}

// Troca a sprite da carta
if(sprite_index != spr_shield){
		sprite_index = spr_shield
		canBeDraged = false
}
		
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}

/*
if (sprite_index == spr_shield && image_index == 3){
	if (i < 300) {
		i++
	}else{
		i = 0
	}
}*/