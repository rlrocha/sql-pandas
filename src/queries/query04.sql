-- Qual a média da receita líquida mensal de vendas no ano de 2019?

WITH receita_mes AS (

    SELECT
        strftime('%m', dtVenda) AS dtMesVenda,
        SUM((vlPrecoUnitario*qtProduto)) AS vlSomaReceitaLiquida

    FROM vendas

    WHERE strftime('%Y', dtVenda) = '2019'

    GROUP BY dtMesVenda
)

SELECT
    AVG(vlSomaReceitaLiquida) AS vlMediaReceitaLiquida

FROM receita_mes