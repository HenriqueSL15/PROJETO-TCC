right = keyboard_check(vk_right)
left = keyboard_check(vk_left)
down = keyboard_check(vk_down)
up = keyboard_check(vk_up)
clickAttack = keyboard_check_pressed(ord("C"))
holdAttack = keyboard_check(ord("C"))
letGoAttack = keyboard_check_released(ord("C"))
//Movimentação
var moveH = (right - left) * spd
var moveV = (down - up) * spd


previousSpeed = hspd
hspd = approach(hspd, moveH, accel)
vspd = approach(vspd, moveV, accel)
layer_create(1,"Text")

if(movable){
//MOVIMENTAÇÃO E COLISÃO
if(place_meeting(x+hspd,y,walls)){
	while(!place_meeting(x+sign(hspd),y,walls)){
		x = x + sign(hspd)
	}
	hspd = 0
}

x = x + hspd

if(place_meeting(x,y+vspd,walls)){
	while(!place_meeting(x,y+sign(vspd),walls)){
		y = y + sign(vspd)
	}
	vspd = 0
}

y = y + vspd

//ALTERNAR SPRITES

// Se a velocidade vertical > 0 então está indo para a cima. Caso a velocidade vertical seja < 0, está indo para a baixo
if(vspd > 0){
	sprite_index = spr_playerDown
}else if(vspd < 0){
	sprite_index = spr_playerUp
}

// Se a velocidade horizontal > 0 então está indo para a direita. Caso a velocidade horziontal seja < 0, está indo para a esquerda
if(hspd > 0){
	sprite_index = spr_playerRight
}else if(hspd < 0){
	sprite_index = spr_playerLeft
}
}

//Verifica se a velocidade antiga é igual a velocidade max E se a velocidade atual é menor que a max
if(previousSpeed == spd && hspd == spd - accel){
	
	//Verifica se existe uma instância do objeto fog
	if(!instance_exists(obj_fog)){
		
		// Fog = true, então podemos criar uma fog, também diz a direção
		fog = [true,"right"] 
		
		//Cria uma instância do objeto dog dependendo da direção do player
		instance_create_layer(obj_player.x + fogDistance[0][0], obj_player.y - fogDistance[0][1],"BottomWall", obj_fog) 
		
		// Alarm para deletar objeto fog depois de um tempo
		alarm[3] = 20 
	}
}else if(previousSpeed == -spd && hspd == -spd + accel){
	
	//Verifica se existe uma instância do objeto fog
	if(!instance_exists(obj_fog)){
		
		// Fog = true, então podemos criar uma fog, também diz a direção
		fog = [true,"left"] 
		
		//Cria uma instância do objeto dog dependendo da direção do player
		instance_create_layer(obj_player.x + fogDistance[1][1], obj_player.y - fogDistance[0][1],"BottomWall", obj_fog) 
		
		// Alarm para deletar objeto fog depois de um tempo
		alarm[3] = 20 
	}
}

// Se fog = true, então podemos alterar as coordenadas da fog
if(fog[0]){
	
	// Se existir um objeto da fog alterar seu x e y com base na direção
	if(instance_exists(obj_fog)){
		
		// Se a direção for "right" (direita)
		if(fog[1] == "right"){
			obj_fog.x = obj_player.x + fogDistance[0][0]
			obj_fog.y = obj_player.y - fogDistance[0][1]
		}
		
		// Se a direção for "left" (left)
		if(fog[1] == "left"){
			obj_fog.x = obj_player.x - fogDistance[1][0]
			obj_fog.y = obj_player.y - fogDistance[1][1]
		}
	}
}

//Variáveis para arremesso da espada
var flipped = direction
var sword_x = (x + 4) * (flipped)
var _xx = x + lengthdir_x(0,image_angle)
var y_offset = lengthdir_y(-20,image_angle)

isReturning = false;

script_execute(states)


holding = false

//Se estou segurando para atacar, tenho a espada e ainda não cliquei
if (holdAttack && hasSword && !alreadyClicked) {
	holding = true
	letGo = false
}

//Verifica se está segurando o botão
if(!holding){
	if(letGoAttack && !alreadyClicked){
		letGo = true
		alreadyClicked = true
	}
}else{
	//Verifica a força com base no tempo que a tecla foi segurada
	
	strength = 2	
	
	/*
	time++
	if(time > 149)
		strength = 3
	else if(time > 74)
		strength = 2
	else
		strength = 1
	*/
}



if(letGo){
	var sword = instance_create_layer(_xx, y - 10, "Shoot", obj_swordSpinning) // Cria instância da espada
    sword.speed = 3 //Especifica a velocidade da espada

	//Verifica as 4 principais direções com base no sprite do jogador
    if (obj_player.sprite_index == spr_playerLeft) {
        sword.direction = 180
    } else if (obj_player.sprite_index == spr_playerRight) {
        sword.direction = 0
    } else if (obj_player.sprite_index == spr_playerUp) {
        sword.direction = 90
    } else {
        sword.direction = 270
    }
	
	//Verifica a força do lançamento do jogador
	if(strength == 1){
		sword.returnDistance = 50
	}else if(strength == 2){
		sword.returnDistance = 150
	}else{
		sword.returnDistance = 250	
	}

    sword.target_player = obj_player // Coloca o jogador como objeto de retorno da espada
	sword.isReturning = false // Manda que ela não está voltando, está sendo arremessada
	sword.hasSword = false // Diz que o jogador NÃO tem a espada no momento
	sword.isGoing = true // Diz que ela está indo, não vindo
	hasSword = false // Coloca que o jogador não possui a espada no momento
	letGo = false // Não soltou o botão
}