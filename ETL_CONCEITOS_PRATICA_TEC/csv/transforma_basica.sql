USE demo_transformacao;

TRUNCATE TABLE venda_agr_estado ;

INSERT INTO venda_agr_estado
SELECT 
    comprador.estado, 
    SUM(venda.valor_venda) AS valor_venda
      FROM demo_transformacao.comprador
INNER JOIN demo_transformacao.venda 
        ON comprador.id_comprador = venda.id_comprador
GROUP BY comprador.estado;
COMMIT ;


SELECT  * FROM  venda_agr_estado; 
