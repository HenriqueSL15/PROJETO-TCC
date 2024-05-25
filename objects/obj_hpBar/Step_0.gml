if(a < 1){
	a++
	max_health = enemyType.life
}
if(instance_exists(enemyType)){
	x = enemyType.x - 100
	current_health = enemyType.life
}else{
	instance_destroy()	
}