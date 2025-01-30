if (global.paused) {
    return;
}

// Troca a sprite da carta
if(sprite_index != spr_rectangle_disc){
		sprite_index = spr_rectangle_disc
		
		alarm[0] = 240
}
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}