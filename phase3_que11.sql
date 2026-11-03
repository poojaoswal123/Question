CREATE TABLE readings (
    machine_id INT,
    reading_time TIMESTAMP,
    temperature INT
);

INSERT INTO readings VALUES
(1, '2026-11-03 10:00:00', 40),
(1, '2026-11-03 10:05:00', 45),
(2, '2026-11-03 10:00:00', 30),
(2, '2026-11-03 10:10:00', 35);

SELECT machine_id, reading_time,
AVG(temperature) AS average_temp,
MIN(temperature) AS minimum_temp,
MAX(temperature) AS maximum_temp,
COUNT(*) AS total_readings
FROM readings
GROUP BY machine_id, reading_time;

-- a. 
-- b. Use LEFT JOIN to show empty intervals.
-- c. Duplicate readings may be counted twice, which gives an incorrect average. Late readings can also change the average.