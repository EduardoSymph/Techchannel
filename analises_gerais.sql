USE Techchannel;

-- Soma de Valores por Responsáveis e Qtd total de Projetos por responsáveis --
SELECT
    Responsavel
    ,COUNT(*) AS TotalProjetos
    ,SUM(Proposta_Inicial) AS TotalPropostas
FROM
    vendas
GROUP BY
    Responsavel;

-- Soma de Valores por Fabricante e Qtd total de Projetos por fabricante --
SELECT
    Fabricante
    ,COUNT(*) AS TotalProjetos
    ,SUM(Proposta_Inicial) AS TotalPropostas
FROM
    vendas
GROUP BY
    Fabricante;


-- Soma de Valores por Fase e Qtd total de Projetos por fase --
SELECT
    Fase
    ,COUNT(*) AS TotalProjetos
    ,SUM(Proposta_Inicial) AS TotalPropostas
FROM
    vendas
GROUP BY
    Fase;


-- Soma de valores por Quarter --
SELECT
    ((MONTH(Datas) - 1) / 3) + 1 AS Trimestre
    ,SUM(Proposta_Inicial) AS SomaPropostaInicial
FROM
    vendas
GROUP BY
    ((MONTH(Datas) - 1) / 3) + 1
ORDER BY
    Trimestre;