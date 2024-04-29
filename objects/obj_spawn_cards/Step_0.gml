randomize()
card = choose(obj_shield_card,obj_fire_ball_card,obj_sword_card,obj_bow_card)
if(cardsSpawned < 3){
	instance_create_layer(xx[cardsSpawned],yy,"HABILIDADES", card)
	cardsSpawned++
}

/*
	if (!instance_exists(card)){
		instance_create_layer(xx[cardsSpawned],yy,"HABILIDADES", card)
		cardsSpawned++
	}
*/