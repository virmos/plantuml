-- Find the names of the ships with the largest number of guns among all ships having the same displacement (including ships in the Outcomes table).

WITH cte AS(SELECT ship AS name, class, numGuns, bore, displacement FROM Outcomes, Classes where classes.class = Outcomes.ship
    UNION 
    SELECT name, i.class, numGuns, bore, displacement
    FROM Ships, Classes i WHERE ships.class = i.class)

    SELECT  cte.name
        FROM    cte
                JOIN ( SELECT   cte.displacement ,
                                MAX(cte.numGuns) AS MaxNumGun
                    FROM     cte
                    GROUP BY cte.displacement
                    ) AS M ON cte.displacement = M.displacement
                            AND cte.numguns = M.MaxNumGun

-- Determine the names of all ships in the Ships table that can be a Japanese battleship having at least nine main guns with a caliber of less than 19 inches and a displacement of not more than 65 000 tons.

SELECT distinct name
    FROM Classes JOIN Ships ON Classes.class = Ships.class
    WHERE CASE WHEN country is NULL THEN 'Japan' ELSE country END ='Japan' 
    AND CASE WHEN numguns is NULL THEN 9 ELSE numguns END >=9 
    and CASE WHEN BORE is NULL  THEN 18 ELSE bore END < 19 
    and case when type is null then 'bb' else type end  = 'bb'
    AND CASE WHEN displacement is NULL THEN 65000 ELSE displacement END <=65000

-- For each class, determine the year the first ship of this class was launched.
-- If the lead ship’s year of launch is not known, get the minimum year of launch for the ships of this class.
