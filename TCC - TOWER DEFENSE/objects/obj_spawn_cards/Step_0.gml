randomize()
card = choose(obj_base_card, obj_fire_ball_card, obj_lightning_card)
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