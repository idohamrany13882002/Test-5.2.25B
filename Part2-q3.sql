--QUESTION A
SELECT countries.country_name, tourists.first_name, tourists.last_name FROM countries
INNER JOIN tourists ON
tourists.country_id = countries.id;

--QUESTION B
SELECT tours.tour_name,  tourists.first_name, tourists.last_name FROM tourists
INNER JOIN tours ON
tours.id = tourists.tour_id;

--QUESTION C
SELECT tours.tour_name,  tourists.first_name, tourists.last_name FROM tourists
LEFT JOIN tours ON
tours.id = tourists.tour_id;

--QUESTION D
SELECT tours.tour_name,  tourists.first_name, tourists.last_name FROM tourists
FULL JOIN tours ON
tours.id = tourists.tour_id;

--QUESTION E
SELECT tours.tour_name,  tourists.first_name, tourists.last_name FROM tourists
FULL JOIN tours ON
tours.id = tourists.tour_id
WHERE tours.tour_name IS NULL;

DELETE FROM tourists
WHERE tourists.first_name = "Brad";

--QUESTION F
SELECT tours.id, tours.tour_name,  tourists.first_name, tourists.last_name FROM tours
FULL JOIN tourists ON
tours.id = tourists.tour_id
WHERE tourists.first_name IS NULL;

UPDATE tours
SET end_date = '2026-03-10'
WHERE id = 1;


UPDATE tours
SET start_date = '2026-03-10'
WHERE id = 1;

--QUESTION G
SELECT tours.tour_name,  tourists.first_name, tourists.last_name, COUNT(tours.tour_name) FROM tours
FULL JOIN tourists ON
tours.id = tourists.tour_id
WHERE tourists.first_name IS NULL;

--QUESTION H
SELECT tourists.first_name, tourists.last_name, tours.tour_name FROM tourists
CROSS JOIN tours;