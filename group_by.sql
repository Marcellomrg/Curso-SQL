--Quantos clientes tem email cadastrado?

SELECT sum(FlEmail) 

FROM clientes;

--Qual cliente juntou mais pontos positivos em 2025-05?

SELECT IdCliente,sum(QtdePontos) 

FROM transacoes
WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND QtdePontos > 0
GROUP by IdCliente
ORDER BY sum(QtdePontos) DESC
limit 1;


--Qual cliente fez mais transações no ano de 2024?

SELECT count(DISTINCT IdTransacao) as qntdetransacao

FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente
ORDER BY count(DISTINCT IdTransacao) DESC
LIMIT 1

--Quantos produtos são de rpg?

SELECT count(IdProduto)


FROM produtos

where DescCateogriaProduto = 'rpg'

--Qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) as totalpontos,
                sum(QtdePontos) / count(DISTINCT substr(DtCriacao,1,10)) AS MEDIA,
                count(DISTINCT substr(DtCriacao,1,10)) as Diasunicos

FROM transacoes

WHERE QtdePontos > 0;

--Qual dia da semana quem  mais pedidos em 2025?

SELECT 
        strftime('%w',substr(DtCriacao,1,10)) as diaSEMANA,
        count(IdTransacao) as qntdetransacoes       

FROM transacoes

WHERE substr(DtCriacao,1,4) = '2025'

GROUP BY 1
ORDER  BY 2 DESC
LIMIT 1;

--Qual o produto mais transacionado?

SELECT IdProduto,sum(QtdeProduto)

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(QtdeProduto) DESC

limit 1;


--Qual o produto com mais pontos transacionados?

SELECT  IdProduto,
        sum(VlProduto * VlProduto) as totalpontos,
        sum(QtdeProduto) as qntproduto

FROM transacao_produto

GROUP BY IdProduto

ORDER BY totalpontos DESC

LIMIT 1;

--Qual o saldo de pontos total do sistema?

SELECT sum(QtdePontos) AS saldoTotal,
        sum(CASE WHEN QtdePontos > 0 THEN QtdePontos ELSE 0 END) AS saldopositivo,
        sum(CASE WHEN QtdePontos < 0 THEN QtdePontos ELSE 0 END) AS saldoNegativo
       


FROM transacoes;

--Quantos pontos já foram subtraídos dos clientes?

SELECT IdCliente,sum(QtdePontos)

FROM transacoes

where QtdePontos < 0 

GROUP BY IdCliente

--Quantos clientes tem Twitch?

SELECT count(DISTINCT IdCliente) as clientesTwitch FROM clientes

WHERE FlTwitch = 1

--Qual a média de saldo em carteira?

SELECT round(avg(QtdePontos),2) 

FROM clientes




