//Utilizando o objeto downStairs
with obj_downStairs

// Se não existe uma instância da transição e se está colidindo com o jogador
if(!instance_exists(obj_transition) && place_meeting(x,y,obj_player)){
	if(room == Game){
		instance_create_layer(0,0, "Transition",obj_transition)
		obj_transition.destino = Game_2
	}else if(room == Game_2){
		instance_create_layer(0,0, "Transition",obj_transition)
		obj_transition.destino = Game
	}
}