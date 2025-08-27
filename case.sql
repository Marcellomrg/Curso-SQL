-- Intervalos
--De 0 a 500  -> Ponei
--de 501 a 1000 -> Ponei premium
--de 1001 a 5000 -> Mago Aprendiz
--de 5001 a 10000 -> Mago mestre
--+10001          -> Mago Supremo

SELECT IdCliente,
        QtdePontos,
        CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos > 500 and QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos > 1000 AND QtdePontos <=  5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos > 5000 AND QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo


from clientes

ORDER BY QtdePontos DESC