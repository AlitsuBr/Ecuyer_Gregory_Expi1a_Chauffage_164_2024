#Insert pour les données de la table consommation:
INSERT INTO t_consommation (id_consommation,fk_installation, date_releve, consommation, temperature, efficacite_energetique) VALUES
	 (4,NULL, '2024-02-03', 3.60, 7.20, 4.20), (5,NULL, '2024-02-04', 2.30, 3.80, 2.90),
    (6,NULL, '2024-02-05', 2.70, 5.20, 3.30), (7,NULL, '2024-02-06', 3.10, 6.10, 3.80), (8,NULL, '2024-02-07', 3.40, 5.90, 4.00), (9,NULL, '2024-02-08', 2.90, 5.50, 3.60), (10,NULL, '2024-02-09', 3.70, 7.00, 4.50),
    (11,NULL, '2024-02-10', 2.60, 4.60, 3.20), (12,NULL, '2024-02-11', 3.50, 6.30, 4.10), (13,NULL, '2024-02-12', 2.40, 5.00, 3.10), (14,NULL, '2024-02-13', 3.00, 5.80, 3.70), (15,NULL, '2024-02-14', 2.80, 5.40, 3.50),
    (16,NULL, '2024-02-15', 3.20, 6.70, 4.00), (17,NULL, '2024-02-16', 2.90, 5.70, 3.60);


INSERT INTO t_installation (fk_client, combustible, type_chauffage, modele_chauffage, date_installation, capacite, marque, puissance, fournisseur) VALUES
    
    (2, null, 'Gaz', 'GX200', '2024-02-25', '500Litres', NULL, NULL, NULL),
    (3, null, 'Electrique', 'EL100', '2024-03-10', '750Litres', NULL, NULL, NULL),
    (4, null, 'Fioul', 'FO500', '2024-04-05', '1200Litres', NULL, NULL, NULL),
    (5, null, 'Gaz', 'GX300', '2024-05-20', '800Litres', NULL, NULL, NULL),
    (6, null, 'Electrique', 'EL200', '2024-06-15', '1000Litres', NULL, NULL, NULL),
    (7, null, 'Fioul', 'FO700', '2024-07-10', '1500Litres', NULL, NULL, NULL),
    (8, null, 'Gaz', 'GX400', '2024-08-25', '900Litres', NULL, NULL, NULL),
    (9, null, 'Electrique', 'EL300', '2024-09-20', '1100Litres', NULL, NULL, NULL),
    (10, null, 'Fioul', 'FO900', '2024-10-05', '1800Litres', NULL, NULL, NULL);


#Inserto pour les données de la table facturation:
INSERT INTO t_facturation (fk_client, fk_installation, montant, date_facturation, statut_paiement, historique_paiements) VALUES
    (2, 3, 350.00, '2024-03-05', 'En attente', NULL), (2, 4, 400.00, '2024-03-20', 'Pas payé', NULL), (3, 5, 450.00, '2024-04-05', 'En attente', NULL),
    (4, 6, 500.00, '2024-04-20', 'Pas payé', NULL), (5, 7, 550.00, '2024-05-05', 'En attente', NULL), (6, 8, 600.00, '2024-05-20', 'Pas payé', NULL), (7, 9, 650.00, '2024-06-05', 'En attente', NULL), (8, 10, 700.00, '2024-06-20', 'Pas payé', NULL),
    (9, 11, 750.00, '2024-07-05', 'En attente', NULL), (10, 12, 800.00, '2024-07-20', 'Pas payé', NULL), (11, 13, 850.00, '2024-08-05', 'En attente', NULL), (12, 14, 900.00, '2024-08-20', 'Pas payé', NULL), (13, 15, 950.00, '2024-09-05', 'En attente', NULL),
    (14, 16, 1000.00, '2024-09-20', 'Pas payé', NULL), (15, 17, 1050.00, '2024-10-05', 'En attente', NULL);
    

    INSERT INTO t_client_avoir_t_facturation (fk_client, fk_facturation) VALUES
    (1, 1), (1, 2), (2, 3), (2, 4), (3, 5),
    (4, 6), (5, 7), (6, 8), (7, 9), (8, 10),
    (9, 11), (10, 12), (11, 13), (12, 14), (13, 15), 
    (14, 16), (15, 17);

INSERT INTO t_client_avoir_t_installation (fk_client, fk_installation) VALUES
	 (1, 2), (2, 3), (2, 4), (3, 5),
    (4, 6), (5, 7), (6, 8), (7, 9), (8, 10),
    (9, 11), (10, 12), (11, 13), (12, 14), (13, 15), 
    (14, 16), (15, 17);
    
    
    INSERT INTO t_maintenance (fk_installation, date_maintenance, description, pieces_remplacees, cout, tache_employer) VALUES
    (2, '2024-03-15', 'Réparation du chauffage', 'Thermostat', 8000.00, 2), (3, '2024-04-01', 'Entretien annuel', 'Filtre à air', 5000.00, 1), (4, '2024-04-15', 'Réparation de la chaudière', 'Brûleur', 10000.00, 2), (5, '2024-05-01', 'Maintenance préventive', 'Sonde de température', 3000.00, 1),
    (6, '2024-05-15', 'Réparation du système', 'Soupape de sécurité', 7000.00, 2), (7, '2024-06-01', 'Vérification de routine', 'Échangeur de chaleur', 4000.00, 1), (8, '2024-06-15', 'Réparation du radiateur', 'Thermocouple', 6000.00, 2), (9, '2024-07-01', 'Entretien de printemps', 'Pompe à eau', 4500.00, 1), (10, '2024-07-15', 'Réparation de la conduite de gaz', 'Vanne de gaz', 8500.00, 2),
    (11, '2024-08-01', 'Diagnostic du système', 'Tableau de contrôle', 5500.00, 1), (12, '2024-08-15', 'Réparation de la fuite', 'Joint de tuyau', 6500.00, 2), (13, '2024-09-01', 'Entretien d automne', 'Electrode d allumage', 4800.00, 1), (14, '2024-09-15', 'Réparation du circuit électrique', 'Relais', 7200.00, 2), (15, '2024-10-01', 'Révision générale', 'Tuyauterie', 9000.00, 1),
    (16, '2024-10-15', 'Réparation du système de ventilation', 'Ventilateur', 5800.00, 2), (17, '2024-11-01', 'Entretien d hiver', 'Gicleur de carburant', 5200.00, 1);




164164