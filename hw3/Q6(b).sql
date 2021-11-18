SELECT g1.name, g2.name FROM geometries as g1, geometries as g2
WHERE g1.name = 'Lido' and g1.name <> g2.name
ORDER BY ST_Distance(g1.geom,g2.geom)
LIMIT 4;