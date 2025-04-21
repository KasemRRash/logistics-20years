CREATE TABLE Bestellpositionen (
      BestellpositionID INTEGER PRIMARY KEY,
      BestellID INTEGER,
      ProduktID INTEGER,
      Menge INTEGER,
      FOREIGN KEY (BestellID) REFERENCES Bestellungen(BestellID),
      FOREIGN KEY (ProduktID) REFERENCES Produkte(ProduktID)
       );



