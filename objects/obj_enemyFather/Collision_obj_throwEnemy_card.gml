isColliding = true
if(!other.drag && other.stopped){
	if(other.typeOfEnemy == "tank"){
		life-=5	
	}else if(other.typeOfEnemy == "normal"){
		life-=3
	}else if(other.typeOfEnemy == "light"){
		life-=1
	}
	vspd = 0

}