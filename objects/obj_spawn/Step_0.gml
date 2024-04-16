randomize()
enemy = choose(obj_enemy,obj_enemy2,obj_enemy3)
if(enemiesSpawned < 3){
	instance_create_layer(xx,yy[enemiesSpawned],"INIMIGOS", enemy)
	enemiesSpawned++
}

/*
x = x - vspd

if(life <= 0){
	instance_destroy();
}
*/