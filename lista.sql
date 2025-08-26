--Lista de transações com apenas 1 ponto--

SELECT * FROM transacoes where QtdePontos = 1 LIMIT ;


--Lista de pedidos realizados no fim de semana--



--Lista de clientes com 0 (zero) pontos--

SELECT * from clientes where QtdePontos = 0;

--Lista de clientes com 100 a 200 pontos (inclusive ambos) --

SELECT * from clientes WHERE QtdePontos BETWEEN 100 AND  200;

--Lista de produtos com nome que começa com “Venda de” --

SELECT * FROM produtos where DescProduto LIKE 'Venda de%%';

--Lista de produtos com nome que termina com “Lover” --

SELECT * FROM produtos where DescCateogriaProduto = 'lovers';

--Lista de produtos que são “chapéu” --

SELECT * FROM produtos where DescProduto LIKE '%Chapéu%';

--Lista de transações com o produto “Resgatar Ponei” --

SELECT tp.IdTransacao,p.* from produtos as p 
INNER JOIN transacao_produto as tp 
ON tp.IdProduto = p.IdProduto
WHERE p.DescProduto = 'Resgatar Ponei';

--Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500] --

