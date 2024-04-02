// Movimentação
var previousSpeed
accel = 0.3
spd = 3.5
hspd = 0
vspd = 0

//Esapada ou ataque
hasSword = true
movable = true
strength = 0
alreadyClicked = false
letGo = false

//Counter
time = 0

<<<<<<< HEAD
dash_dir = -1;
dash_vspd = 6;
dash_timer = 15;
dash = true;
dash_delay = 60 * 2;
=======
//Fog
fog = [false, noone]
fogDistance = [[15,13],[25,13]]
>>>>>>> main

//Objetos de colisão
walls = [obj_wall,obj_topWall,obj_bottomWall,obj_wallUp]

//Dash
dash_dir = -1
dash_vspd = 6
dash_timer = 15
dash = true
dash_delay = 15 * 1

//States
states = States_off