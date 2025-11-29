BEGIN 	

UPDATE 	emissorbruno
SET		SomaValor=SomaValor+NEW.Valor
WHERE	idEmissorBruno=NEW.EmissorBruno_idEmissorBruno;
UPDATE	emissorbruno
SET		EnvioValor=EnvioValor+1
WHERE	idEmissorBruno=NEW.EmissorBruno_idEmissorBruno;

UPDATE 	destinobruno
SET		SomaValor=SomaValor+NEW.Valor
WHERE	idDestinoBruno=NEW.DestinoBruno_idDestinoBruno;
UPDATE	destinobruno
SET		EnvioValor=EnvioValor+1
WHERE	idDestinoBruno=NEW.DestinoBruno_idDestinoBruno;

END