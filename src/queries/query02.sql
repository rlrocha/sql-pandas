-- Quais os três produtos mais vendidos e as quantidades destes?

SELECT
    T1.idProduto,
    T2.descNomeProduto,
    T2.descTamanhoProduto,
    SUM(T1.qtProduto) AS somaQtProduto

FROM vendas AS T1

LEFT JOIN produtos AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T1.idProduto

ORDER BY somaQtProduto DESC

LIMIT 3