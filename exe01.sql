--Selecione todos os clientes com email cadastrado--

SELECT * FROM clientes where FlEmail = 1;
FlEmail	FlTwitch	FlYouTube	FlBlueSky	FlInstagram	QtdePontos	DtCriacao	DtAtualizacao
--Selecione todas transações de 50 pontos (exatos)--

SELECT * from transacoes where QtdePontos = 50;

--Selecione todos clientes com mais de 500 pontos--

SELECT * FROM clientes where QtdePontos > 500;

--Selecione produtos que contêm ‘churn’ no nome

SELECT * FROM produtos WHERE DescProduto LIKE '%pp';

SELECT * FROM produtos WHERE DescProduto IN('Churn_10pp','Churn_2pp','Churn_5pp');

SELECT * FROM produtos WHERE DescCateogriaProduto = 'churn_model';
