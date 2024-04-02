estado = noone;
tempo_estado = room_speed * 5;
timer_estado = 0;

destino_x = x;
destino_y = y;
velh = 0;
velv = 0;
vel = 1;

sat = 0;

alvo = noone;
alvo_dir = 0;
duracao_ataque = 0.5
tempo_ataque = duracao_ataque;


sprite = sprite_index;
xscale = 1;
yscale = 1;

//metodo de mudanca de estado
muda_estado = function(_estado){
	tempo_estado--;
	timer_estado = irandom(tempo_estado)
	
	if(timer_estado == tempo_estado or tempo_estado <= 0){
		//mudar estado
		estado = _estado[irandom(array_length(_estado)-1)];
		
		tempo_estado = room_speed * 5;
	}
}

//estado de perseguicao
//seguir player
///@method campo_visao(largura, escala, escala)
campo_visao = function(_largura, _altura, _xscale){
	var _x1, _y1, _x2, _y2;
	_x1 = x;
	_y1 = y + _altura / 2 - sprite_height / 2;
	_x2 = _x1 + _largura;
	_y2 = _y1 + _altura;
	//desenhando retangulo
	draw_rectangle(_x1, _y1, _x2, _y2, false)
	
	//chegando se o player esta no campo
	var _alvo = collision_rectangle(_x1, _y1, _x2, _y2, obj_player, 0, 1);
	return _alvo;
	
}

//metodo dele parado
estado_parado = function(){
	sprite = spr_boss_inicial;
	image_blend = c_white;
	velh = 0;
	velv = 0;
	
	alvo = campo_visao(large_visao, sprite_height * alt_visao, xscale);
	//se eu tenho um alvo
	if(alvo){
		estado = estado_segue;
	}
	
	muda_estado([estado_andando, estado_parado]);
}
estado_andando = function(){
	sprite = spr_boss_inicial
	//checando a distancia do destino
	var _dist = point_distance(x, y, destino_x, destino_y);
	//so vou definir um destino, se eu estiver proximo do destino
	if(_dist<100){
		//escolher um ponto para andar
		//escolhendo qualquer direcao dentro da room
		destino_x = random(room_width);
		destino_y = random(room_width);
	}
	
	//achando a direcao para o destino
	var _dir = point_direction(x,y,destino_x,destino_y);
	
	//me movendo
	velh = lengthdir_x(vel, _dir);
	velv = lengthdir_y(vel, _dir);
	image_blend = c_red;
	
	alvo = campo_visao(large_visao, sprite_height * alt_visao, xscale);
	if(alvo){
		estado = estado_segue;
	}
	
	muda_estado([estado_parado, estado_andando]);
}
//sprite
desenha_sprite = function(){
	draw_sprite_ext(sprite, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
}


estado_segue = function(){
	//checar se o alvo existe
	if(instance_exists(alvo)){
		//saber a direcao do alvo
		var _dir = point_direction(x, y, alvo.x, alvo.y);
		
		// me mover na direcao do alvo
		velh = lengthdir_x(vel, _dir);
		velv = lengthdir_y(vel, _dir);
		//distancia do alvo
		var _dist = point_distance(x,y,alvo.x,alvo.y);
		
		//se o alvo esta perto, eu ataco
		if(_dist < large_visao / 2) estado = estado_prepara_ataque;
		//se o alvo estiver longe eu desisto
		if(_dist > large_visao * 2) alvo = noone;
	}
	else //nao tenho alvo
	{
		muda_estado([estado_parado, estado_andando]);
	
	
 }
}
	
	estado_prepara_ataque = function(){	
		
		//variavel para controlar a minha cor
		static _sat = 0;
		
		//sat nunca passa de 1
		if(sat < 1){
			sat +=(delta_time/ 2000000);
		}
		
		//animacao use a sat
		image_speed = sat;
		velv = 0;	
		velh = 0;
		image_blend = make_color_hsv(255,sat * 255, 255);
		
		//se eu esperei 2s eu ataco
		if(sat > 1 ){
			estado = estado_ataque;
			alvo_dir = point_direction(x, y, alvo.x, alvo.y)
			sat = 0;
			image_speed = 1;
		}
	}
	estado_ataque = function(){
		
		//diminuindo o tempo de ataque
		tempo_ataque -= delta_time/1000000;
		image_blend = c_aqua
		//avance na posicao do jogador na ultima posicao
		velh = lengthdir_x(vel * 4, alvo_dir);
		velv = lengthdir_y(vel * 4, alvo_dir);
		
		//fazendo ele sair do ataque
		if(tempo_ataque <= 0){
			//mudando estado
			estado = estado_parado
			
			//resetando o tempo do ataque
			tempo_ataque = duracao_ataque;
		}
	}
	


//preparacao do ataque
//avisa ao jogador que algo vai acontecer

//estado de ataque


//estado inicial:
estado = estado_parado

