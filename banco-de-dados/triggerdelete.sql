BEGIN 	

UPDATE 	emissorbruno
SET		SomaValor=SomaValor-OLD.Valor
WHERE	idEmissorBruno=OLD.EmissorBruno_idEmissorBruno;
UPDATE	emissorbruno
SET		SomaEnvio=SomaEnvio-1
WHERE	idEmissorBruno=OLD.EmissorBruno_idEmissorBruno;

UPDATE 	destinobruno
SET		SomaValor=SomaValor-OLD.Valor
WHERE	idDestinoBruno=OLD.DestinoBruno_idDestinoBruno;
UPDATE	destinobruno
SET		SomaEnvio=SomaEnvio-1
WHERE	idDestinoBruno=OLD.DestinoBruno_idDestinoBruno;

END