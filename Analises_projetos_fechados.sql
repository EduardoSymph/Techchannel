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

-- Soma de Projetos Fechados por Quarter --
SELECT
    ((MONTH(Datas) - 1) / 3) + 1 AS Trimestre
    ,SUM(Proposta_Inicial) AS SomaPropostaInicial
FROM
    vendas
WHERE
    Fase = 'Fechados'
GROUP BY
    ((MONTH(Datas) - 1) / 3) + 1
ORDER BY
    Trimestre;

-- Soma de Projetos Fechados por Responsáveis e Qtd de Projetos que cada um realizou --
SELECT
    Responsavel,
    COUNT(*) AS TotalProjetosFechados
    ,SUM(Proposta_Inicial) AS TotalNegociosFechados
FROM
    vendas
WHERE
    Fase = 'Fechados'
GROUP BY
    Responsavel
ORDER BY
    TotalNegociosFechados DESC;