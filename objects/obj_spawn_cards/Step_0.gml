randomize()
card = choose(obj_sword_card)
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