
CREATE TABLE IF NOT EXISTS Patients
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName VARCHAR(256) NOT NULL,
    lastName VARCHAR(256) NOT NULL
);

CREATE TABLE IF NOT EXISTS Measurements
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    systolic INT NOT NULL,
    diastolic INT NOT NULL,
    pulse INT NOT NULL,    
    time_recorded TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    patient_id INT NOT NULL,    
    FOREIGN KEY (patient_id) REFERENCES Patients(id)    
);

CREATE TABLE IF NOT EXISTS Users
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
	email_address VARCHAR(256) NOT NULL UNIQUE,
	username VARCHAR(128),
	password VARCHAR(256)
);
