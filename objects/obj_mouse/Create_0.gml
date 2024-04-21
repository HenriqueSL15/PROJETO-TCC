inventoryHover = -1
slotHover = -1
inventoryDrag = -1
slotDrag = -1
itemDrag = -1

mouseOver = function (){
	//Resultados vazios de hover
	slotHover = -1
	inventoryHover = -1
	
	//Coordenadas do mouse
	var mx = mouse_x
	var my = mouse_y
	
	with (obj_inventory){
		if(point_in_rectangle(
			mx,
			my,
			x-6,
			y-6,
			x-6 + 12 + rowLength * 128,
			y-6 + 12 + (((INVENTORY_SLOTS - 1) div rowLength) + 1)*128
		)){
			for(var i = 0; i < INVENTORY_SLOTS; i += 1){
				var xx = x + (i mod rowLength) * 128 + 2
				var yy = y + (i div rowLength) * 150 + 2
				if(point_in_rectangle(mx,my,xx,yy,xx+128,yy+160)){
					other.slotHover = i
					other.inventoryHover = id	
				}
			}
		}
	}
}

stateFree = function(){
	mouseOver()
	
	//Começa a arrastar um item se o slot não for vazio
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1){
		//Entra no estado de arrastar
		state = stateDrag
		itemDrag = inventoryHover.inventory[slotHover]
		inventoryDrag = inventoryHover
		slotDrag = slotHover
	}
}

stateDrag = function () {
	mouseOver()
	if (!mouse_check_button(mb_left)){
		if(mouse_y < 672 && mouse_x > 319){
			if(itemDrag == 0){
				InventoryRemove(obj_inventory.id,0)
				instance_create_layer(mouse_x,mouse_y,"HABILIDADES",obj_fire_ball_card)
			}else if(itemDrag == 1){
				InventoryRemove(obj_inventory.id,1)
				instance_create_layer(mouse_x,mouse_y,"HABILIDADES",obj_shield_card)	
			}else if(itemDrag == 2){
				InventoryRemove(obj_inventory.id,2)
				instance_create_layer(290,mouse_y,"HABILIDADES",obj_sword_card)	
			}
		}
		if (slotHover != -1) InventorySwap(inventoryDrag, slotDrag, inventoryHover, slotHover)
		
		//Retorna ao estado livre
		state = stateFree
		itemDrag = -1
		inventoryDrag = -1
		slotDrag = -1
	}
}

state = stateFree