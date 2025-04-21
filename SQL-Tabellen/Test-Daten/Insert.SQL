INSERT INTO Kunden (KundenID, Name, Adresse, Kontaktinformationen) VALUES
(1, 'Max Mustermann', 'Musterstraße 1, Berlin', 'max1989@gmail.com'),
(2, 'Kasem Rashrash', 'Hauptstraße 45, Bremen', 'kasr123@gmail.de'),
(3, 'Lisa Schmidt', 'Marktstraße 10, Hamburg', 'lisa.schmidt@mail.de');

INSERT INTO Bestellungen (BestellID, KundenID, Datum, Status, FahrzeugID) VALUES
(1001, 1, '2025-02-15', 'Offen', 201),
(1002, 2, '2025-02-16', 'Abgeschlossen', 202),
(1003, 3, '2025-02-17', 'In Bearbeitung', 203);

INSERT INTO Produkte (ProduktID, Name, Kategorie, Preis) VALUES
(301, 'Laptop', 'Elektronik', 999.99),
(302, 'Smartphone', 'Elektronik', 699.99),
(303, 'Tablet', 'Elektronik', 499.99);

INSERT INTO Bestellpositionen (BestellpositionID, BestellID, ProduktID, Menge, Einzelpreis) VALUES
(4001, 1001, 301, 2, 999.99),
(4002, 1002, 302, 1, 699.99),
(4003, 1003, 303, 3, 499.99);

INSERT INTO Lager (LagerID, Standort, Kapazität, VerfügbareProdukte, KI_ID) VALUES
(501, 'Berlin', 1000, 200, 601),
(502, 'Hamburg', 500, 150, 602),
(503, 'München', 800, 180, 603);

INSERT INTO Lager_Produkte (LagerID, ProduktID, Menge) VALUES
(501, 301, 50),
(501, 302, 30),
(502, 303, 40);

INSERT INTO KI_Manager (KI_ID, Aufgabe, Erstellungsdatum, Ergebnis, CO2_Emission, KI_Spar, SensorDaten) VALUES
(601, 'Routenoptimierung', '2025-02-10', 'Effizienzsteigerung', 200.50, 15.5, 'GPS-Daten: OK'),
(602, 'Bestandsverwaltung', '2025-02-12', 'Automatische Nachbestellung', 180.75, 12.3, 'Temperatur: 5°C'),
(603, 'Energieverbrauchsanalyse', '2025-02-14', 'Reduzierung von Lastspitzen', 160.00, 10.8, 'Energieverbrauch: 98%');

INSERT INTO KI_Transport (FahrzeugID, KI_ID, Typ, Kapazität, Status) VALUES
(201, 601, 'Drohne', 100, 'Aktiv'),
(202, 602, 'LKW', 2000, 'Wartung'),
(203, 603, 'Transporter', 1200, 'Unterwegs');

