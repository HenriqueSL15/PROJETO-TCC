if (global.paused) {
    return;
}

// Troca a sprite da carta
if(sprite_index != spr_sword){
	sprite_index = spr_sword
}
	
		
if(place_meeting(x,y,obj_spawn)){
	obj_spawn.life --;
}

x+=spd	