CREATE DATABASE machine_db;
USE machine_db;
CREATE TABLE machines (
    machine_id INT PRIMARY KEY,
    machine_name VARCHAR(50)
);

CREATE TABLE alerts (
    alert_id INT PRIMARY KEY,
    machine_id INT,
    created_at TIMESTAMP
);

INSERT INTO machines VALUES
(1, 'xyz'),
(2, 'abc'),
(3, 'efg');

INSERT INTO alerts VALUES
(101, 1, '2026-11-03 10:00:00'),
(102, 1, '2026-11-03 11:00:00'),
(103, 2, '2026-11-02 10:00:00');

SELECT m.machine_id, m.machine_name, COUNT(a.alert_id) AS alert_count
FROM machines m
LEFT JOIN alerts a
ON m.machine_id = a.machine_id
GROUP BY m.machine_id, m.machine_name;

-- LEFT JOIN displays all machines, even if they have no alerts. Machines with zero alerts also appear.