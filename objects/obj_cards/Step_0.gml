if (i < 180){
	i++	
}else{
	if (sprite_index != spr_cards_anim){
		InventoryAdd(obj_inventory.id,irandom(3))
		sprite_index = spr_cards_anim
	}
	i = 0
}