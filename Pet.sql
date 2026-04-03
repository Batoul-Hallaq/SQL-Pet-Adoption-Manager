create database Pet_Adoption;
USE Pet_Adoption;
CREATE TABLE Adopter (
    Adopter_ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(12) NOT NULL,
    Zip_code VARCHAR(10),
    Street VARCHAR(100),
    City VARCHAR(50),
    PRIMARY KEY (Adopter_ID)
    );
    
USE Pet_Adoption; 
    CREATE TABLE Pet(
    Pet_ID INT NOT NULL,
    Name VARCHAR(100),
    Species VARCHAR(100),
    Age INT(10),
    Gender VARCHAR(10),
    Health_Status VARCHAR(200),
    PRIMARY KEY (Pet_ID)
    );
    
USE Pet_Adoption; 
CREATE TABLE Staff(
  Staff_ID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Phone VARCHAR(12) NOT NULL,
  Role VARCHAR(50),
  PRIMARY KEY (Staff_ID)
);

USE Pet_Adoption; 
CREATE TABLE Adoption_Application(
  Application_ID INT NOT NULL,
  Adopter_ID INT,
  Pet_ID INT,
  Application_Date DATE,
  PRIMARY KEY (Application_ID),
  FOREIGN KEY (Adopter_ID) REFERENCES Adopter(Adopter_ID),
  FOREIGN KEY (Pet_ID) REFERENCES Pet(Pet_ID)
);

INSERT INTO Adopter (Adopter_ID, Name, Phone, Zip_code, Street, City)
VALUES
(51, 'Sara Mohammed', '0501234567', '11461', 'King Fahd Rd', 'Riyadh'),
(52, 'Ali Hassan', '0539876543', '21577', 'Prince Sultan St', 'Jeddah'),
(53, 'Lina Abdullah', '0592223344', '32245', 'King Saud St', 'Dammam'),
(54, 'Omar Khalid', '0541122334', '42313', 'Quba St', 'Madinah'),
(55, 'Huda Ibrahim', '0583344556', '47911', 'King Abdulaziz Rd', 'Tabuk');

INSERT INTO Staff (Staff_ID, Name, Role, Phone )
VALUES
(123, 'Ghadeer Sami', 'Admin', '0548775119'),
(321, 'Maryam Alessa', 'Data Analyst', '0555973709'),
(231, 'Batool Hossam', 'Veterinarian', '0567893708'),
(312, 'Yusra Tamer', 'Systems Programmer', '0541700270');

INSERT INTO Pet (Pet_ID, Name, Age, Species, Gender, Health_Status)
VALUES
(101, 'Misho', 2, 'Cat',  'Female', 'Healthy'),
(102, 'Rocky', 3, 'Dog',  'Male',   'Vaccinated'),
(103, 'Lulu',  1, 'Cat',  'Female',	'Needs Care'),
(104, 'Max',   4, 'Dog',  'Male',	'Healthy'),
(105, 'Coco',  5, 'Bird', 'Male',	'Injured Wing');

INSERT INTO Adoption_Application (Application_ID, Adopter_ID, Pet_ID, Application_Date)
VALUES
(9001, 51, 101, '2025-01-12'),
(9002, 52, 104, '2025-02-03'),
(9003, 53, 103, '2025-02-15'),
(9004, 54, 102, '2025-03-01'),
(9005, 55, 105, '2025-03-10');
