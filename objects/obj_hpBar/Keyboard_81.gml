if(current_health > 0){
	current_health -= 10
}else{
	instance_destroy()	
	instance_destroy(enemyType)	
}