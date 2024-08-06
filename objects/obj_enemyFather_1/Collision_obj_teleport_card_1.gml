isColliding = true
tele = 1460
if(!other.drag){
	if(other.x < pos[0]){
		x = other.x + 70
	}else{
		x = pos[0]
		canCount = true
	}
}