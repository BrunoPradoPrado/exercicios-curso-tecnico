---pessoa+escolaridade:
SELECT	pessoabruno.nome, 
		escolaridadebruno.Nome
FROM	pessoabruno, escolaridadebruno
WHERE	pessoabruno.EscolaridadeBruno_idEscolaridade
= 		escolaridadebruno.idEscolaridade



---pessoa+localidade+uf:
SELECT	pessoabruno.nome, 
		localidadebruno.Nome,
        ufbruno.nome,ufbruno.Sigla
FROM	pessoabruno, localidadebruno, ufbruno
WHERE	pessoabruno.LocalidadeBruno_idLocalidadeBruno
= 		localidadebruno.idLocalidadeBruno
AND		localidadebruno.UFBruno_idUFBruno
= 		ufbruno.idUFBruno


---igual de cima mas nomes formatados + seleciona só de um estado
SELECT	pessoabruno.nome as 'Entrevistado', 
		localidadebruno.Nome as 'Nascimento',
        ufbruno.nome as 'UF', ufbruno.Sigla as 'Sigla'
FROM	pessoabruno, localidadebruno, ufbruno
WHERE	pessoabruno.LocalidadeBruno_idLocalidadeBruno
= 		localidadebruno.idLocalidadeBruno
AND		localidadebruno.UFBruno_idUFBruno
= 		ufbruno.idUFBruno
AND		ufbruno.Sigla = 'rs'

---not in // in
SELECT	pessoabruno.nome as 'Entrevistado', 
		localidadebruno.Nome as 'Nascimento',
        ufbruno.nome as 'UF', ufbruno.Sigla as 'Sigla'
FROM	pessoabruno, localidadebruno, ufbruno
WHERE	pessoabruno.LocalidadeBruno_idLocalidadeBruno
= 		localidadebruno.idLocalidadeBruno
AND		localidadebruno.UFBruno_idUFBruno
= 		ufbruno.idUFBruno
AND		localidadebruno.Nome NOT IN  ('Curitiba')


---Selecionar alguem de algum lugar
SELECT 	COUNT(*) AS "Entrevistados de SC"
FROM pessoabruno, localidadebruno, ufbruno
WHERE	ufbruno.Sigla = 'sc'
AND		pessoabruno.LocalidadeBruno_idLocalidadeBruno = LocalidadeBruno.idLocalidadeBruno
AND		localidadebruno.UFBruno_idUFBruno
= 		ufbruno.idUFBruno


---selecionar por genero
SELECT 	COUNT(*) AS "Homens entrevistados de SC"
FROM pessoabruno, localidadebruno, ufbruno, generobruno
WHERE	ufbruno.Sigla = 'sc'
AND 	generobruno.Nome = 'masculino'
AND		pessoabruno.LocalidadeBruno_idLocalidadeBruno = LocalidadeBruno.idLocalidadeBruno
AND		pessoabruno.generoBruno_idgeneroBruno = generoBruno.idgeneroBruno
AND		localidadebruno.UFBruno_idUFBruno
= 		ufbruno.idUFBruno


---seleciona pela primeira letra do nome
SELECT 	pessoabruno.Nome
FROM 		pessoabruno
WHERE		pessoabruno.Nome LIKE 'a%'


---seleciona pessoa, localidade, uf (nome), uf (sigla)
SELECT	pessoabruno.nome,
		localidadebruno.nome,
        ufbruno.nome,
        ufbruno.sigla
FROM	pessoabruno, localidadebruno, ufbruno
WHERE	pessoabruno.LocalidadeBruno_idLocalidadeBruno
=		LocalidadeBruno.idLocalidadeBruno
AND		LocalidadeBruno.UFBruno_idUFBruno
=		ufbruno.idUFBruno



---seleciona média de salario 
SELECT AVG(pessoabruno.Renda)
FROM		pessoabruno, localidadebruno, ufbruno
WHERE	pessoabruno.LocalidadeBruno_idLocalidadeBruno
=		LocalidadeBruno.idLocalidadeBruno
AND		LocalidadeBruno.UFBruno_idUFBruno
=		ufbruno.idUFBruno
AND 	ufbruno.Sigla in ('rs')


---Seleciona pessoa com o salário mais alto
SELECT 	pessoabruno.Nome, pessoabruno.Renda
FROM	pessoabruno
ORDER BY	pessoabruno.Renda DESC (descendente) limit 1 (limita a 1 item na lista)


---Seleciona pessoa com o menor salário         (Repare que busca em ordem (1, 2, 3,...) então precisa colocar DESC para puxar o último (maior na sequência 1, 2, 3,...)
SELECT 		pessoabruno.Nome, pessoabruno.Renda
FROM		pessoabruno
ORDER BY	pessoabruno.Renda LIMIT 1


---seleciona pessoa e renda e retorna se a pessoa tem ou nao (agua, esgoto e luz)
SELECT	pessoabruno.Nome, pessoabruno.Renda,
CASE	
		WHEN pessoabruno.Agua=1 THEN"Tem água"
        WHEN pessoabruno.Agua=0 THEN"Não tem água"
END		AS	 textoagua,
CASE	
		WHEN pessoabruno.Esgoto=1 THEN"Tem esgoto"
        WHEN pessoabruno.Esgoto=0 THEN"Não tem esgoto"
END 	AS	 textoesgoto,
CASE	
		WHEN pessoabruno.luz=1 THEN"Tem luz"
        WHEN pessoabruno.luz=0 THEN"Não tem luz"
END 	AS	 textoluz
FROM	pessoabruno



---seleciona pessoas e classifica-as por sua renda
SELECT	pessoabruno.Nome,
CASE	
		WHEN pessoabruno.Renda<=5000 THEN"CLT"
        WHEN pessoabruno.Renda>5000 AND	pessoabruno.Renda<=10000 THEN"Professor do IFSC"
        WHEN pessoabruno.Renda>10000 THEN"Diretor"
END		AS	 Profissão
FROM	pessoabruno
