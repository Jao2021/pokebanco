SELECT * FROM Pokemon P, INFO I, STATUS S WHERE P.id = I.poke_id AND P.id = S.poke_id;

/*POKEMONS DE KANTO 1º GERAÇÃO*/
	CALL add_poke ('Bulbassauro', 'kanto', 'Grama', 'Vermelho', 0.7, 6.9, 49, 49, 45, 65, 65, 45);
	CALL add_poke ('Ivysaur', 'kanto', 'Grama', 'Vermelho', 1.0, 13.0, 62, 63, 60, 80, 80, 60);
	CALL add_poke ('Venusaur', 'kanto', 'Grama', 'Vermelho', 2.0, 100.0, 82, 83, 80, 100, 100, 80);
	
	CALL add_poke ('Charmander', 'kanto', 'Fogo', 'Vermelho', 0.6, 8.5, 52, 43, 39, 60, 50, 65);
	CALL add_poke ('Charmeleon', 'kanto', 'Fogo', 'Vermelho', 1.1, 19.0, 64, 58, 58, 80, 65, 80);
	CALL add_poke ('Charizard', 'kanto', 'Fogo', 'Vermelho', 1.7, 90.0, 84, 78, 78, 109, 85, 100);
	
	CALL add_poke ('Squirtle', 'kanto', 'Água', 'Vermelho', 0.5, 9.0, 48, 65, 44, 50, 64, 43);
	CALL add_poke ('Wartortle', 'kanto', 'Água', 'Vermelho', 1.0, 22.5, 63, 80, 59, 65, 80, 58);
	CALL add_poke ('Blastoise', 'kanto', 'Água', 'Vermelho', 1.6, 85.5, 83, 100, 79, 85, 105, 78);
	