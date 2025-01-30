randomize()
// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function createEnemy(number){
	percentage = irandom_range(1,100)
	if(obj_counter.waves == 0){
		if(percentage == 1){
			enemy = obj_enemy
		}else if(percentage <= 6){
			enemy = obj_enemy_archer
		}else if(percentage <= 50){
			enemy = obj_enemy2
		}else{
			enemy = obj_enemy3
		}		
	}else if(obj_counter.waves == 1){
		if(percentage <= 5){
			enemy = obj_enemy
		}else if(percentage <= 30){
			enemy = obj_enemy_archer
		}else if(percentage <= 70){
			enemy = obj_enemy2
		}else{
			enemy = obj_enemy3	
		}		
	}else if(obj_counter.waves == 2){
		if(percentage == 1){
			enemy = obj_enemy_7
		}else if(percentage <= 16){
			enemy = obj_enemy
		}else if(percentage <= 51){
			enemy = obj_enemy_archer
		}else if(percentage <= 77){
			enemy = obj_enemy2
		}else{
			enemy = obj_enemy3	
		}		
	}else if(obj_counter.waves == 3){
		if(percentage <= 5){
			enemy = obj_enemy_7
		}else if(percentage <= 30){
			enemy = obj_enemy
		}else if(percentage <= 80){
			enemy = obj_enemy_archer
		}else{
			enemy = obj_enemy2
		}		
	}else if(obj_counter.waves == 4){
		if(percentage <= 25){
			enemy = obj_enemy_7
		}else if(percentage <= 50){
			enemy = obj_enemy
		}else if(percentage <= 75){
			enemy = obj_enemy_archer
		}else{
			enemy = obj_enemy2	
		}
	}
	
	
	
	
	
	var inimigo = instance_create_layer(xx,yy[number],"INIMIGOS", enemy)
	var hpBar = instance_create_layer(xx-100,yy[number]-90, "INIMIGOS", obj_hpBar)
	hpBar.enemyType = inimigo
	hpBar.indice = enemiesSpawned
}