USE Techchannel;

-- Soma de Projetos Fechados no 4º Quarter --
SELECT
    SUM(Proposta_Inicial) AS SomaProjetosFechados
FROM
    vendas
WHERE
    Fase = 'Fechados'
    AND ((MONTH(Datas) - 1) / 3) + 1 = 4;


-- Projetos Fechados do maior ao menor --
SELECT
	Projeto
    ,Proposta_Inicial AS ProjetosFechados
FROM
    vendas
WHERE
    Fase = 'Fechados'
ORDER BY 
	ProjetosFechados DESC;