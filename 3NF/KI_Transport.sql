CREATE TABLE KI_Transport (
      FahrzeugID INTEGER PRIMARY KEY,
      KI_ID INTEGER,
      Typ VARCHAR(50),
      Kapazität INTEGER,
      Status VARCHAR(50),
      FOREIGN KEY (KI_ID) REFERENCES KI_Manager(KI_ID) 
    );


