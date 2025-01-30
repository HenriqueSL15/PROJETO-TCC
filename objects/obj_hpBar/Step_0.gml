if(a < 1){
	a++
	if (instance_exists(enemyType)) {
	    max_health = enemyType.life;
	} else {
	    instance_destroy(); // Destroi a barra de vida se o inimigo foi destruído.
	}
}
if(instance_exists(enemyType)){
	x = enemyType.x - 100
	current_health = enemyType.life
}else{
	instance_destroy()	
}