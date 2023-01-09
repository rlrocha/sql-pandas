-- Quais as quantidades mensais vendidas do produto camisa de tamanho G no ano de 2019?

SELECT
    strftime('%m', T1.dtVenda) AS dtMesVenda,
    SUM(T1.qtProduto) AS somaQtProduto

FROM vendas AS T1

LEFT JOIN produtos AS T2
ON T1.idProduto = T2.idProduto

WHERE strftime('%Y', T1.dtVenda) = '2019'
AND T2.descNomeProduto = 'Camisa' --  Produto mais vendido?
AND T2.descTamanhoProduto = 'G'

GROUP BY dtMesVenda