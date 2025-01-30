randomize()

enemyGroup = [obj_enemy, obj_enemy2, obj_enemy3]
//enemyGroup[enemiesSpawned]
if(enemiesSpawned < 3){
	timer++
	if(timer >= 120){
		if(obj_counter.waves == 0 && enemiesSpawned == 0){
			emptySlots = 0
			for(var i = 0;i < array_length(obj_inventory.inventory);i++){
				if(obj_inventory.inventory[i] == -1){
					emptySlots += 1
				}
			}
			if(emptySlots <= 4){
				createEnemy(enemiesSpawned)
				enemiesSpawned+=1
				timer = 0
			}
		}else{
			createEnemy(enemiesSpawned);
			enemiesSpawned+=1
			timer = 0				
		}
	}
}


if(enemiesSpawned == 3){
	if(!instance_exists(obj_enemy) && !instance_exists(obj_enemy2) && !instance_exists(obj_enemy3)
	&& !instance_exists(obj_enemy_archer) && !instance_exists(obj_enemy_7)){
		enemiesSpawned = 0
		obj_counter.waves++
	}
}



/*
x = x - vspd

if(life <= 0){
	instance_destroy();
}
*/