-- Part 1
create extension POSTGIS;
CREATE TABLE geometries (name varchar, geom geometry);
INSERT INTO geometries VALUES
    ('Lido', 'POINT(-118.3127336 34.0777647)'),
    ('Epstein Plaza', 'POINT(-118.2888238538757 34.02052253481885)'),
    ('Vivian Hall', 'POINT(-118.28808400513849 34.020109100881186)'),
    ('Cromwell Field', 'POINT(-118.28729977210527 34.02131312226778)'),
    ('Book Store', 'POINT(-118.28634326606596 34.02083876545548)'),
    ('Fountain', 'POINT(-118.2851033469909 34.020311272922804)'),
    ('Argue Plaza', 'POINT(-118.28334379514135 34.01965343013877)'),
    ('Starbucks', 'POINT(-118.2825502696874 34.02132984693899)'),
    ('Royal St Stru', 'POINT(-118.28209926814638 34.02189088473918)'),
    ('University Club', 'POINT(-118.28340166944642 34.02248067186067)'),
    ('Dentistry', 'POINT(-118.28576307240098 34.02356923598205)'),
    ('John McKay', 'POINT(-118.28762925137238 34.023224232286715)'),
    ('Downey Stru', 'POINT(-118.2896017683648 34.02120751565373)');

SELECT ST_AsText(ST_ConvexHull(
    ST_Collect(geometries.geom)))
    FROM geometries;

-- Part 2
SELECT g1.name, g2.name FROM geometries as g1, geometries as g2
WHERE g1.name = 'Lido' and g1.name <> g2.name
ORDER BY ST_Distance(g1.geom,g2.geom)
LIMIT 4;