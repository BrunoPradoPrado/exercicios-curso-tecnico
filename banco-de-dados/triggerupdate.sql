BEGIN 	

UPDATE 	emissorbruno
SET		SomaValor=SomaValor+NEW.Valor-OLD.Valor
WHERE	idEmissorBruno=NEW.EmissorBruno_idEmissorBruno;

UPDATE 	destinobruno
SET		SomaValor=SomaValor+NEW.Valor-OLD.Valor
WHERE	idDestinoBruno=NEW.DestinoBruno_idDestinoBruno;

END