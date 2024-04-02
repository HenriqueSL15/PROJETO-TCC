isReturning = false; // Adiciona uma variável para rastrear se a espada está voltando
returnDistance = false // Distância em pixels que a espada deve percorrer antes de retornar
start_x = x; // Armazena a posição inicial X da espada
start_y = y; // Armazena a posição inicial Y da espada
stopped = false //Armazena se ela está parada
distance_travelled = 0 // Armazena a distância viajada
pickable = false //Se pode ser pegada
maxSpeed = 10 //Velocidade máxima
accel = 0.2 //Aceleração
slowDown = false

counter = 0

collision = [obj_nopc,obj_nopd,obj_nope]