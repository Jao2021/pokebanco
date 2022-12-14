Create table Pokemon(
	ID INTEGER NOT NULL GENERATED BY DEFAULT AS IDENTITY,
	NOME VARCHAR(20) NOT NULL,
	ALTURA NUMERIC(5,2),
	PESO NUMERIC(5,2),
	FOTO VARCHAR(10),
	PRIMARY KEY (ID)
)

CREATE TABLE INFO(
	POKE_ID INTEGER REFERENCES Pokemon(ID),
	REG VARCHAR(20),
	TIPO VARCHAR(20),
	JOGO VARCHAR(20),
	PRIMARY KEY (POKE_ID)
)

CREATE TABLE STATUS(
	POKE_ID INTEGER REFERENCES Pokemon(ID),
	ATK INTEGER,
	DEF INTEGER,
	HP INTEGER,
	SP_ATK INTEGER,
	SP_DEF INTEGER,
	SPEED INTEGER,
	PRIMARY KEY (POKE_ID)
)

DROP TABLE Pokemon
