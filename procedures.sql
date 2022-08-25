CREATE OR REPLACE PROCEDURE add_poke(V_ID INTEGER, V_NOME VARCHAR(20), V_REG VARCHAR(20), V_TIPO VARCHAR(20), 
									 V_JOGO VARCHAR(20), V_ALTURA NUMERIC(5,2), V_PESO NUMERIC(5,2),V_ATK INTEGER, 
									V_DEF INTEGER, V_HP INTEGER, V_SP_ATK INTEGER, V_SP_DEF INTEGER, V_SPEED INTEGER)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO Pokemon (ID, NOME, ALTURA, PESO) VALUES (V_ID, V_NOME, V_ALTURA, V_PESO);
	INSERT INTO INFO (POKE_ID, REG, TIPO, JOGO) VALUES ((SELECT currval(pg_get_serial_sequence('Pokemon', 'id'))), V_REG, V_TIPO, V_JOGO);
	INSERT INTO STATUS (POKE_ID, ATK, DEF, HP, SP_ATK, SP_DEF, SPEED) VALUES ((SELECT currval(pg_get_serial_sequence('Pokemon', 'id'))),
																			 V_ATK, V_DEF, V_HP, V_SP_ATK, V_SP_DEF, V_SPEED);
	COMMIT;
END;$$

CALL add_poke (001, 'Bulbassauro', 'kanto', 'Grama', 'Vermelho', 0.7, 6.9, 49, 49, 45, 65, 65, 45);
INSERT INTO Pokemon (ID, NOME, ALTURA, PESO) VALUES (001, 'Bulbassauro', 0.7, 6.9);

SELECT * FROM Pokemon;