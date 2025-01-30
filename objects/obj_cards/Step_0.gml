randomize()
if (global.paused) {
	image_speed = 0
    return;
}else {
	image_speed = 1
}


if (i < 120 && InventorySearch(obj_inventory.id,-1) != -1){
	i++	
}else if(i >= 120){
	if (sprite_index != spr_cards_anim){
		InventoryAdd(obj_inventory.id,irandom(9))
		sprite_index = spr_cards_anim
	}

	i = 0
}

