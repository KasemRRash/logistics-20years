CREATE TABLE Bestellungen (
      BestellID INTEGER PRIMARY KEY,
      KundenID INTEGER,
      Datum DATE,
      Status VARCHAR(50),
      FahrzeugID INTEGER,
      FOREIGN KEY (KundenID) REFERENCES Kunden(KundenID),
      FOREIGN KEY (FahrzeugID) REFERENCES KI_Transport(FahrzeugID)
             );



