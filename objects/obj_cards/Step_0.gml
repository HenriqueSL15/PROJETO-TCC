if (i < 120 && InventorySearch(obj_inventory.id,7) == -1){
	i++	
}else if(i >= 120){
	if (sprite_index != spr_cards_anim){
		InventoryAdd(obj_inventory.id,irandom(9))
		sprite_index = spr_cards_anim
	}
	i = 0
}