CREATE TABLE machine_readings (
    machine_id INT,
    reading_timestamp TIMESTAMP,
    temperature INT
);
INSERT INTO machine_readings VALUES
(1, '2026-11-03 10:00:00', 40),
(1, '2026-11-03 11:00:00', 45),
(2, '2026-11-03 10:00:00', 30),
(2, '2026-11-03 11:00:00', 35);

SELECT machine_id, reading_timestamp, temperature,
LAG(temperature) OVER (PARTITION BY machine_id ORDER BY reading_timestamp) AS previous_temp
FROM machine_readings;

-- a. ROW_NUMBER() gives a number to each reading. 

-- b. LAG() gives the previous row temperature.It helps us compare the recent temperature with the previous temperature.

-- c.  LAG() gives NULL because there is no previous reading.