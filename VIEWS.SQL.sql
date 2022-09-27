CREATE OR REPLACE VIEW battle_status AS
	SELECT P.ID, P.NOME AS Nome, S.HP AS Vida, S.ATK AS Ataque, S.DEF AS Defesa, 
		   S.SPEED AS Velocidade, S.SP_ATK AS Ataque_especial, S.SP_DEF AS Defesa_especial
	FROM Pokemon P, Status S
	WHERE P.ID = S.POKE_ID;
	
CREATE OR REPLACE VIEW poke_info AS
	SELECT P.ID, P.NOME, I.TIPO, P.ALTURA, P.PESO, I.REG AS REGIAO
	FROM Pokemon P, INFO I
	WHERE P.ID = I.POKE_ID;
	
SELECT * FROM poke_info;