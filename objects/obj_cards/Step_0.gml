if (i < 120){
	i++	
}else{
	if (sprite_index != spr_cards_anim){
		InventoryAdd(obj_inventory.id,irandom(9))
		sprite_index = spr_cards_anim
	}
	i = 0
}