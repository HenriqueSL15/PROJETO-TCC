enemyID = 0
inventoryHover = -1
slotHover = -1
inventoryDrag = -1
slotDrag = -1
itemDrag = -1

yy = 0
xx = 0

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
	if (mouse_check_button(mb_left)) && (slotHover != -1) && (inventoryHover.inventory[slotHover] != -1 && !global.paused){
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
		if(mouse_y > 128 && mouse_y < 465 && mouse_x > 425 && mouse_x < 1500){
			if(mouse_y > 353 && mouse_y < 465){
				yy = 406
			}else if(mouse_y < 350 && mouse_y > 238){
				yy = 290
			}else{
				yy = 180
			}
			
			if(mouse_x > 428 && mouse_x < 645){
				xx = 530
			}else if(mouse_x > 645 && mouse_x < 856){
				xx = 530 + 220
			}else if(mouse_x > 856 && mouse_x < 1070){
				xx = 530 + (220 * 2)
			}else if(mouse_x > 1070 && mouse_x < 1286){
				xx = 530 + (220 * 3)
			}else if(mouse_x > 1286 && mouse_x < 1500){
				xx = 530 + (220 * 4)
			}						
			
			if(instance_position(mouse_x,mouse_y,obj_light)){
				var ID = instance_position(mouse_x,mouse_y,obj_light)	
			}
			
			if(instance_position(mouse_x,mouse_y, [obj_enemy,obj_enemy2,obj_enemy3,obj_enemy_archer, obj_enemy_7])){
				enemyID = instance_position(mouse_x,mouse_y, [obj_enemy,obj_enemy2,obj_enemy3,obj_enemy_archer, obj_enemy_7])
			}else {
				enemyID = 0	
			}
			
			if(itemDrag == 0){
				InventoryRemove(obj_inventory.id,0)
				var fireball = instance_create_layer(135,96,"HABILIDADES",obj_fire_ball_card)
				fireball.otherObject = ID
				fireball.newY = yy
			}else if(itemDrag == 1){
				InventoryRemove(obj_inventory.id,1)
				instance_create_layer(mouse_x,yy,"HABILIDADES",obj_shield_card)	
			}else if(itemDrag == 2){
				InventoryRemove(obj_inventory.id,2)
				instance_create_layer(290,yy,"HABILIDADES",obj_sword_card)	
			}else if(itemDrag == 3){
				InventoryRemove(obj_inventory.id,3)
				instance_create_layer(510,yy,"HABILIDADES",obj_teleport_card)
			}else if(itemDrag == 4){
				InventoryRemove(obj_inventory.id,4)
				if(yy == 406){
					instance_create_layer(xx,yy,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,290,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,180,"HABILIDADES",obj_bow_card)
				}else if(yy == 290){
					instance_create_layer(xx,406,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,yy,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,180,"HABILIDADES",obj_bow_card)
				}else{
					instance_create_layer(xx,406,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,290,"HABILIDADES",obj_bow_card)
					instance_create_layer(xx,yy,"HABILIDADES",obj_bow_card)
				}
			}else if(itemDrag == 5){
				InventoryRemove(obj_inventory.id,5)
				instance_create_layer(972,325,"HABILIDADES",obj_disc_card)
			}else if(itemDrag == 6){
				InventoryRemove(obj_inventory.id,6)
				var poison = instance_create_layer(135,96,"HABILIDADES_CHAO",obj_poison_card)
				poison.otherObject = ID
				poison.newY = yy
			}else if(itemDrag == 7){
				if (instance_number(obj_grabEnemy_card) < 1){
					if (enemyID != 0){
						var grabEnemy = instance_create_layer(xx,yy,"HABILIDADES",obj_grabEnemy_card)
						grabEnemy.otherObject = enemyID
						InventoryRemove(obj_inventory.id,7)
						InventoryAdd(obj_inventory.id,10)
					}
				}
			}else if(itemDrag == 10){
				InventoryRemove(obj_inventory.id,10)
				var throwEnemy = instance_create_layer(135,96, "HABILIDADES",obj_throwEnemy_card)
				throwEnemy.otherObject = ID
				throwEnemy.newY = yy
			}else if(itemDrag == 8){
				InventoryRemove(obj_inventory.id,8)
				var ice_card = instance_create_layer(mouse_x,yy, "HABILIDADES_CHAO",obj_ice_card)
			}else if(itemDrag == 9){
				InventoryRemove(obj_inventory.id,9)
				if(yy == 406){
					if(xx == 530){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 750){
						instance_create_layer(xx, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 110, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 970){
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 110, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 1190){
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
					}else{
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220, 290, "HABILIDADES",obj_lightning_card_side)
					}
				}else if(yy == 290){
					if(xx == 530){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 406, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 203, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 750){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 406, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220 * 2, 406, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 970){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 406, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220 * 2, 406, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 1190){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 406, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220 * 2, 203, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220 * 2, 406, "HABILIDADES",obj_lightning_card_side)
					}else{
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 406, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 203, "HABILIDADES",obj_lightning_card_side)
						
					}
				}else if(yy == 180){
					if(xx == 530){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 750){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 110, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 970){
						instance_create_layer(xx - 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 110, 290, "HABILIDADES",obj_lightning_card_side)
					}else if(xx == 1190){
						instance_create_layer(xx + 220 * 2, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx - 330, 290, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
					}else{
						instance_create_layer(xx + 220, yy, "HABILIDADES",obj_lightning_card_side)
						instance_create_layer(xx, 290, "HABILIDADES",obj_lightning_card_side)
						
					}
				}
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