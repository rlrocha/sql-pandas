-- Qual loja teve a maior receita líquida de vendas no ano de 2019?

SELECT
    T2.idLoja,
    T2.descCidadeLoja,
    SUM(T1.vlPrecoUnitario * T1.qtProduto) AS vlSomaReceitaLiquida

FROM vendas AS T1

LEFT JOIN lojas AS T2
ON T1.idLoja = T2.idLoja

WHERE strftime('%Y', T1.dtVenda) = '2019'

GROUP BY T1.idLoja

ORDER BY vlSomaReceitaLiquida DESC

LIMIT 3