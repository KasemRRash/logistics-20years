CREATE TABLE Lager (
      LagerID INTEGER PRIMARY KEY,
      Standort VARCHAR(200),
      Kapazität INTEGER,
      VerfügbareProdukte INTEGER,
      KI_ID INTEGER,
      FOREIGN KEY (KI_ID) REFERENCES KI_Manager(KI_ID)
      );



