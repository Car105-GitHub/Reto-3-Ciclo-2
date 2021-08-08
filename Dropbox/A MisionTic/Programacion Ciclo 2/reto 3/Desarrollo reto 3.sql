SELECT  p.ID_Proyecto,
        p.Clasificacion,
        sum( c.Cantidad * m.Precio_Unidad ) as Gasto_Compras,
        p.Serial
FROM Proyecto p
JOIN Compra c ON
p.ID_Proyecto = c.ID_Proyecto
JOIN MaterialConstruccion m ON
c.ID_MaterialConstruccion = m.ID_MaterialConstruccion
GROUP BY p.ID_Proyecto
ORDER BY Gasto_Compras DESC
LIMIT 10;
