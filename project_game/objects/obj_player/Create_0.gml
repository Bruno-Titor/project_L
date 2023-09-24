vel = 4;
velh = 0;
velv = 0;
grav = .25;

//sistema de pulo 
	jump_spd = -2.5;
	jumpMax = 2;
	jumpCount = 0;
	
	jumpHoldFrames = 15;
	jumpTimer = 0;

// Declare a matriz e inicialize-a apenas com as sprites de corrida
var sprites = ds_grid_create(1, 2); // Supondo que você tenha apenas sprites de corrida (1 direção e 2 estados: parado e correndo)

sprites[0, 0] = spr_player_correndo; // Sprite do jogador correndo para a direita
sprites[0, 1] = spr_player_correndo; // Sprite do jogador correndo para a esquerda

movendo = 0;
lado = 0;
