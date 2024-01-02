CREATE DATABASE HMS;

USE HMS;

CREATE TABLE hms.patient (
  patientId INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(45) NOT NULL,
  lastName VARCHAR(45) NOT NULL,
  dateOfbirth DATE NOT NULL,
  gender VARCHAR(45) NOT NULL,
  contactNumber VARCHAR(45) NOT NULL,
  address VARCHAR(45) NOT NULL,
  PRIMARY KEY (patientId));
  
  CREATE TABLE hms.doctor (
  doctorId INT NOT NULL AUTO_INCREMENT,
  firstName VARCHAR(45) NOT NULL,
  lastName VARCHAR(45) NOT NULL,
  specialization VARCHAR(100) NOT NULL,
  contactNumber VARCHAR(45) NOT NULL,
  PRIMARY KEY (doctorId));
  
  CREATE TABLE hms.appointment (
  appointmentId INT NOT NULL AUTO_INCREMENT,
  patientId INT NOT NULL,
  doctorId INT NOT NULL,
  appointmentDate DATE NOT NULL,
  description TEXT NOT NULL,
  PRIMARY KEY (appointmentId),
  INDEX patientId_idx (patientId ASC) VISIBLE,
  INDEX doctorId_idx (doctorId ASC) VISIBLE,
  CONSTRAINT patientId
    FOREIGN KEY (patientId)
    REFERENCES hms.patient (patientId)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT doctorId
    FOREIGN KEY (doctorId)
    REFERENCES hms.doctor (doctorId)
    ON DELETE CASCADE
    ON UPDATE NO ACTION);
    
    
    
    
    