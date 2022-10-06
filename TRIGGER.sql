--  CREATE TABLE Poke_dado(
--  poke_id INTEGER NOT NULL,
--  data_criacao VARCHAR(20) NOT NULL,
--  operacao_realizada	VARCHAR(20)
--  )
 
--  CREATE OR REPLACE FUNCTION poke_function()
--  RETURNS trigger 
--  LANGUAGE plpgsql AS $$
--  BEGIN
--  IF (TG_OP = 'INSERT') THEN
--  INSERT INTO Poke_dado (poke_id, data_criacao, operacao_realizada)
--  VALUES (new.Poke_dado, current_timestamp, 'INSERT. A linha de codigo' || NEW.Poke_id || 'foi inserido');
--  RETURN NEW;
 
--  ELSEIF (TG_OP = 'UPDATE') THEN
--  INSERT INTO Poke_dado (poke_id, data_criacao, operacao_realizada)
--  VALUES (new.Poke_dado, current_timestamp, 'UPDADTE. A linha de codigo' || NEW.Poke_id || 'teve os valores atualizados' || OLD || 'com' || NEW.* || '.');
--  RETURN NEW;
 
--  ELSEIF (TG_OP = 'DELETE') THEN
--  INSERT INTO Poke_dado (poke_id, data_criacao, operacao_realizada)
--  VALUES (new.Poke_dado, current_timestamp, 'DELETE. A linha de codigo' || OLD.Poke_id || 'foi deletada');
--  RETURN OLD;
--  END IF;
--  RETURN NULL;
--  END;
--  $$
 
--  CREATE TRIGGER Poke_dado_trigger
--  AFTER INSERT OR UPDATE OR DELETE ON Pokemon 
--  FOR EACH ROW
--  EXECUTE PROCEDURE Poke_function();
 
 
DROP TABLE Poke_dado cascade;
 