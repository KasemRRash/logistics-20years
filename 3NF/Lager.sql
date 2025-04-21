CREATE TABLE Lager (
      LagerID INTEGER PRIMARY KEY,
      StandortID INTEGER,
      Kapazität INTEGER,
      KI_ID INTEGER,
      FOREIGN KEY (StandortID) REFERENCES Lagerstandorte(StandortID),
      FOREIGN KEY (KI_ID) REFERENCES KI_Manager(KI_ID)
          );


