-- Managing a Fitness Center Database
-- SQL Data Insertion
-- Placed in wrong database in error.  Uploading under a different query tab

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age)
VALUES (1101, "Carly Smith", 24);

SELECT * from Members

INSERT INTO Members (id, name, age)
VALUES (1103, "Melanie Brooks", 62),
		(1104, "Richard Wright", 45),
		(1105, "Lena Wings", 36),
        (1106, "Mark Phillips", 31),
        (1107, "Joe Smoe", 39);

INSERT INTO WorkoutSessions
VALUES 	(1, 1101, '2024-05-28', "09:00", "crossfit"),
		(2, 1102, '2024-05-29', "09:00", "crossfit"),
        (3, 1103, '2024-06-07', "06:00", "yoga"),
        (4, 1106, '2024-05-30', "09:00", "crossfit"),
        (5, 1104, '2024-06-02', "11:00", "weight training"),
        (6, 1105, '2024-06-03', "11:00", "weight training");
        
SELECT * from WorkoutSessions    
        
INSERT INTO WorkoutSessions 
VALUES (1, 1101, 2024-05-29, "09:00", "crossfit"),
		(1, 1102, 2024-05-29, "09:00", "crossfit"),
        (4, 1103, 2024-06-07, "06:00", "yoga"),
        (1, 1106, 2024-05-29, "09:00", "crossfit");
        
UPDATE WorkoutSessions
SET session_time = "15:00"
WHERE member_id = 1104; 

-- SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members
WHERE id = 1107;
-- SET SQL_SAFE_UPDATES = 1;

SELECT * from Members

