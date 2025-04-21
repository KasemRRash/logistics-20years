CREATE TABLE Kunden (
      KundenID INTEGER PRIMARY KEY,
      Name VARCHAR(150),
      AdresseID INTEGER,
      Kontaktinformationen VARCHAR(150),
      FOREIGN KEY (AdresseID) REFERENCES Adressen(AdresseID)
      );



