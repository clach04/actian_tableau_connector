DROP TABLE IF EXISTS "Batters";

CREATE TABLE "Batters"
(
    Player VARCHAR(101),
    Team VARCHAR(50),
    League VARCHAR(2),
    Year SMALLINT,
    Games DOUBLE PRECISION,
    AB DOUBLE PRECISION,
    R DOUBLE PRECISION,
    H DOUBLE PRECISION,
    Doubles DOUBLE PRECISION,
    Triples DOUBLE PRECISION,
    HR DOUBLE PRECISION,
    RBI DOUBLE PRECISION,
    SB DOUBLE PRECISION,
    CS DOUBLE PRECISION,
    BB DOUBLE PRECISION,
    SO DOUBLE PRECISION,
    IBB DOUBLE PRECISION,
    HBP DOUBLE PRECISION,
    SH DOUBLE PRECISION,
    SF DOUBLE PRECISION, 
    GIDP DOUBLE PRECISION
);

COPY "Batters" (Player, Team, League, Year, Games, AB, R, H, Doubles, Triples, HR, RBI, SB, CS, BB, SO, IBB, HBP, SH, SF, GIDP) 
FROM '<root_directory>/connector-plugin-sdk/tests/datasets/TestV1/Batters.csv' 
DELIMITER ',' CSV ENCODING 'UTF8' QUOTE '"' NULL 'NULL'; 
