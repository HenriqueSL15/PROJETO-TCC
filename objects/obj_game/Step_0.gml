with obj_downStairs
	if(place_meeting(x,y,obj_player) && room == Game){
		if(!instance_exists(obj_transition)){
			instance_create_layer(0,0, "Transition",obj_transition)
			obj_transition.destino = Game_2
		}
	}else if(place_meeting(x,y,obj_player) && room == Game_2){
		if(!instance_exists(obj_transition)){
			instance_create_layer(0,0, "Transition",obj_transition)
			obj_transition.destino = Game
		}
	}