CREATE TABLE Produkte (
      ProduktID INTEGER PRIMARY KEY,
      Name VARCHAR(150),
      KategorieID INTEGER,
      FOREIGN KEY (KategorieID) REFERENCES Kategorien(KategorieID)
        );
