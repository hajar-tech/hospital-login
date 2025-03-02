create database hospital;
use hospital;
CREATE TABLE user (
    idUser INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(150) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(30) NOT NULL,
    role ENUM('PATIENT', 'DOCTOR') NOT NULL
);

desc user;
select * from user;

CREATE TABLE doctor (
    idUser INT PRIMARY KEY,
    specialization VARCHAR(100),
    FOREIGN KEY (idUser) REFERENCES user(idUser)
);
select * from doctor;
select * from patient;


CREATE TABLE patient (
    idUser INT PRIMARY KEY,
    FOREIGN KEY (idUser) REFERENCES user(idUser)
);

SELECT idUser, fullName,phoneNumber, role FROM user WHERE email = "saida@gmail.com" AND password = "saida";

SELECT * FROM user WHERE email = 'saida@gmail.com' AND password = 'saida';