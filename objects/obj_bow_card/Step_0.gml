if (global.paused) {
    return;
}

// Troca a sprite da carta
if(sprite_index != spr_rectangle){
	sprite_index = spr_rectangle
}
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}

if(b < 60){
	b++
}else{
	stopped = true	
}
