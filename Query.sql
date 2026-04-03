USE Pet_Adoption;
SELECT Pet_ID, Name, Age
FROM Pet
WHERE Age < 3;

USE Pet_Adoption;
SELECT *
FROM Pet
WHERE Health_Status = 'Healthy';

USE Pet_Adoption;
SELECT AVG(Age) AS Average_Age
FROM Pet;

USE Pet_Adoption;
SELECT COUNT(*) AS Total_Applications
FROM Adoption_Application;

/* 
   This query returns the name of THE adopter who submitted adoption applications
   for the oldest pet in the shelter.
*/
SELECT Name
FROM Adopter
WHERE Adopter_ID IN (
    SELECT Adopter_ID
    FROM Adoption_Application
    WHERE Pet_ID IN (
        SELECT Pet_ID
        FROM Pet
        WHERE Age = (SELECT MAX(Age) FROM Pet)
    )
);
/*
Join:
*/
SELECT Adoption_Application.Application_ID, Pet.Name AS Pet_Name
FROM Adoption_Application
JOIN Pet
    ON Adoption_Application.Pet_ID = Pet.Pet_ID;

/*
View:
*/
CREATE VIEW Vpet_Application AS
SELECT Adoption_Application.Application_ID, Adoption_Application.Application_Date, Pet.Name AS Pet_Name
FROM Adoption_Application
JOIN Pet 
ON Adoption_Application.Pet_ID = Pet.Pet_ID;

SELECT * FROM Vpet_Application;
