-- Qual a quantidade de produtos únicos foram vendidos?

SELECT
    COUNT(DISTINCT idProduto) AS qtProdutosUnicosVendidos

FROM vendas