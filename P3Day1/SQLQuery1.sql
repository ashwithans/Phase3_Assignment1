CREATE DATABASE OurExerciseDb 
ON 
(
    NAME = OurExerciseDb_data,
    FILENAME = 'C:\Users\Ashwitha\Desktop\Assignment\AssignmentPhase3\OurExerciseDb.mdf',
    SIZE = 24MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 8MB
)
LOG ON
(
    NAME = OurExerciseDb_log,
    FILENAME = 'C:\Users\Ashwitha\Desktop\Assignment\AssignmentPhase3\OurExerciseDb_log.ldf'
);

USE OurExerciseDb;


CREATE TABLE Product (
    PId INT IDENTITY(50, 1) PRIMARY KEY NOT NULL,
    PName NVARCHAR(100) NOT NULL,
    PPrice DECIMAL(10, 2) CHECK (PPrice >= 1 AND PPrice <= 100000),
    PCompany NVARCHAR(100) NOT NULL,
    PQty INT CHECK (PQty >= 1),
    CONSTRAINT CHK_PId CHECK (PId >= 50)
);

INSERT INTO Product (PName, PPrice, PCompany, PQty) VALUES
('Product1', 100.50, 'SamSung', 10),
('Product2', 150.25, 'Apple', 20),
('Product3', 80.75, 'Redmi', 15),
('Product4', 200.00, 'HTC', 30),
('Product5', 120.00, 'Samsung', 25);
select * from Product;