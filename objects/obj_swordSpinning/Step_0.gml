if(place_meeting(x,y,collision)){
	slowDown = true
	isReturning = false
	isGoing = false
}

if (isReturning) {
	isGoing = false
    if (target_player) {
        // Atualiza a posição do jogador em tempo real
        target_player_x = target_player.x
        target_player_y = target_player.y
        
        // Calcula a direção e define a velocidade em direção ao jogador
        var dir_to_player = point_direction(x, y, target_player_x, target_player_y);
        direction = dir_to_player; // Define a direção para apontar para o jogador
        if(speed < maxSpeed){
			speed+=accel
		}
		
		
		pickable = true
    } else {
        instance_destroy(); // Destroi a espada se não houver jogador alvo
    }
}else if(isGoing) {
	isReturning = false
	if(speed < maxSpeed && distance_travelled < returnDistance){
		speed+=accel
	}else if (speed > 0) {
		speed -= accel
	}else{
		speed = 0	
	}
	stopped = true	
}else if (slowDown){
	isReturning = false
	isGoing = false
	
	var dir_to_player = point_direction(x, y, obj_player.x, obj_player.y)
    direction = dir_to_player // Define a direção para apontar para o jogador
	if (speed > 0) {
		speed -= accel * 2.5
	}else if(speed <= 0){
		speed = 0
	}
}else{
	if (speed > 0) {
		speed -= accel
	}else{
		speed = 0	
	}
}
	

if(keyboard_check_pressed(ord("C")) && !obj_player.hasSword && stopped){
	isGoing = false
	isReturning = true
	obj_player.movable = false
}else if(!keyboard_check(ord("C"))){
	
	isReturning = false
	obj_player.movable = true
	distance_travelled = point_distance(start_x, start_y, x, y)
}


if(place_meeting(x,y,obj_player) && pickable){
	obj_player.movable = true
	obj_player.alarm[0] = room_speed * 0.75
	obj_player.strength = 0
	obj_player.time = 0
	instance_destroy()
	obj_player.hasSword = true
}
show_debug_message(isGoing)