CREATE TABLE Produktpreise (
      PreisID INTEGER PRIMARY KEY,
      ProduktID INTEGER,
      Preis DECIMAL(10,2),
      Gültig_ab DATE,
      FOREIGN KEY (ProduktID) REFERENCES Produkte(ProduktID)
         );




