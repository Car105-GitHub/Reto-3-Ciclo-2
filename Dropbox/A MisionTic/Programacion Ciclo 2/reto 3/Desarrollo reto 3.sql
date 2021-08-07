-- Requerimiento1: tres meses en los que se realizan más compras
SELECT  strftime("%m",Compra.Fecha) as Mes,
        COUNT(*) Numero_Compras
FROM Compra
GROUP BY Mes
ORDER BY Numero_Compras DESC
LIMIT 15;

SELECT  strftime("%m",Compra.Fecha) as Mes,
        COUNT(*) Numero_Compras
FROM Compra
GROUP BY Mes
ORDER BY Numero_Compras DESC
LIMIT 3;

-- SELECT SUBSTR(Compra.Fecha, 6, 2) as Mes
-- FROM Compra
-- LIMIT 15;

SELECT  SUBSTR(Compra.Fecha, 6, 2) as Mes,
        COUNT(*) Numero_Compras
FROM Compra
GROUP BY Mes
ORDER BY Numero_Compras DESC
LIMIT 3;
