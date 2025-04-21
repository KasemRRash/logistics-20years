CREATE VIEW Bestellübersicht AS 

SELECT Bestellungen.BestellID, Kunden.Name AS Kunde, Bestellungen.Status 

FROM Bestellungen 

JOIN Kunden ON Bestellungen.KundenID = Kunden.KundenID; 


CREATE VIEW Lagerbestand AS 
SELECT Lager.LagerID, Lager.StandortName, Lager.Kapazität,  COALESCE(SUM(Lager_Produkte.Menge), 0) AS Gesamtbestand  
FROM Lager 
LEFT JOIN Lager_Produkte ON Lager.LagerID = Lager_Produkte.LagerID  
GROUP BY Lager.LagerID, Lager.StandortName, Lager.Kapazität; 

CREATE VIEW Durchschnittsbestellungen AS 

SELECT Produkte.Name, AVG(Bestellpositionen.Menge) AS Durchschnittliche_Menge 

FROM Produkte 

JOIN Bestellpositionen ON Produkte.ProduktID = Bestellpositionen.ProduktID 

GROUP BY Produkte.Name; 


CREATE VIEW Transportstatus AS  

SELECT KI_Transport.FahrzeugID, KI_Transport.Typ, KI_Transport.Status, KI_Manager.Aufgabe, KI_Manager.CO2_Emission  

FROM KI_Transport  

JOIN KI_Manager ON KI_Transport.KI_ID = KI_Manager.KI_ID; 



CREATE VIEW TopBestellungen AS 

SELECT Bestellungen.BestellID, Kunden.Name AS Kunde,  

       COALESCE(SUM(Bestellpositionen.Menge * Produkte.Preis), 0) AS Gesamtpreis 

FROM Bestellungen 

JOIN Kunden ON Bestellungen.KundenID = Kunden.KundenID 

LEFT JOIN Bestellpositionen ON Bestellungen.BestellID = Bestellpositionen.BestellID 

LEFT JOIN Produkte ON Bestellpositionen.ProduktID = Produkte.ProduktID 

GROUP BY Bestellungen.BestellID, Kunden.Name 

ORDER BY Gesamtpreis DESC; 