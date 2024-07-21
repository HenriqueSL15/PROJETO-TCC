
randomize()
enemy = choose(obj_enemy,obj_enemy2,obj_enemy3,obj_enemy_archer)
if(enemiesSpawned < 3){
	var inimigo = instance_create_layer(xx,yy[0],"INIMIGOS", obj_enemy)
	var hpBar = instance_create_layer(xx-100,yy[0]-90, "INIMIGOS", obj_hpBar)
	hpBar.indice = enemiesSpawned
	hpBar.enemyType = inimigo
	enemiesSpawned++
}


if(enemiesSpawned == 3){
	if(!instance_exists(obj_enemy) && !instance_exists(obj_enemy2) && !instance_exists(obj_enemy3) && !instance_exists(obj_enemy_archer)){
		enemiesSpawned = 0
	}
}



/*
x = x - vspd

if(life <= 0){
	instance_destroy();
}
*/