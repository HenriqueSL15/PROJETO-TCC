randomize()
enemy = choose(obj_enemy,obj_enemy2,obj_enemy3)
if(enemiesSpawned < 3){
	instance_create_layer(xx,yy[enemiesSpawned],"INIMIGOS", enemy)
	enemiesSpawned++
}

if(enemiesSpawned == 3){
	if(!instance_exists(obj_enemy) && !instance_exists(obj_enemy2) && !instance_exists(obj_enemy3)){
		enemiesSpawned = 0
	}
}

/*
x = x - vspd

if(life <= 0){
	instance_destroy();
}
*/