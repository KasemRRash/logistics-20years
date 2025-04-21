CREATE TABLE Lager_Produkte (
      LagerID INTEGER,
      ProduktID INTEGER,
      Menge INTEGER,
      PRIMARY KEY (LagerID, ProduktID),
      FOREIGN KEY (LagerID) REFERENCES Lager(LagerID),
      FOREIGN KEY (ProduktID) REFERENCES Produkte(ProduktID)
     );


