use master
go
drop database Perruques
go

Create database Perruques
go

Use Perruques
go

/******************************Création des tables*************************/

Create table Coupe
(IdCoupe int identity not null,
Coupe varchar(20)

--Contrainte de clé primaire
constraint PK_Coupe primary key (IdCoupe),
)

Create table Genre
(IdGenre int identity not null,
Genre varchar(20)

--Contrainte de clé primaire
constraint PK_Genre primary key (IdGenre),
)
Create table Style
(IdStyle int identity not null,
Style varchar(20),

--Contrainte de clé primaire
constraint PK_Style primary key (IdStyle),
)

Create table Couleur
(IdCouleur int identity not null,
Couleur varchar(20)
--Contrainte de clé primaire
constraint PK_Couleur primary key (IdCouleur),
)

Create table SegmentMarche
(IdSegmentMarche int identity not null,
Segment varchar(20)

--Contrainte de clé primaire
constraint PK_SegmentMarche primary key (IdSegmentMarche),
)

Create table Fournisseur
(IdFournisseur int identity not null,
Fournisseur varchar(50),
NumTel char(12),
Courriel varchar(40),
IdSegmentMarche int

--Contrainte de clé primaire
constraint PK_Fournisseur primary key (IdFournisseur),
constraint FK_Contact foreign key (IdSegmentMarche) references SegmentMarche(IdSegmentMarche)
)

Create table Modele
(IdModele int identity not null,
Code varchar(18),
Prix money,
QteInventaire int,
QteReserve int,
IdStyle int,
IdCouleur int,
Longueur int,
IdCoupe int,
IdGenre int,
IdFournisseur int
--Contrainte de clé primaire
constraint PK_Perruque primary key (IdModele),

--Contraintes de clés étrangères
constraint FK_Style foreign key (IdStyle) references Style (IdStyle),
constraint FK_Couleur foreign key (IdCouleur) references Couleur (IdCouleur),
constraint FK_Coupe foreign key (IdCoupe) references Coupe (IdCoupe),
constraint FK_Genre foreign key (IdGenre) references Genre (IdGenre),
constraint FK_Fournisseur foreign key (IdFournisseur) references Fournisseur (IdFournisseur)
)
go

/**************************Insertion des données************************/
--Coupe
Insert into Coupe values
	('Au carré'),
	('Dreadlocks'),
	('Plat'),
	('Bouclés'),
	('Court'),
	('Mi-rasé'),
	('Afro'),
	('Toupet long'),
	('Côtés rasés'),
	('Courts séparés'),
	('Échevelé'),
	('Chauve'),
	('Tonsure'),
	('Clown'),
	('Calvitie'),
	('Mohawk')

--Genre
Insert into Genre values
	('Féminin'),
	('Masculin'),
	('Non genré')
--Styles
insert into Style values
	('Hollywood'),  
	('Patience'),
	('Princesse'),
	('Sympathique'),
	('Énergique'),
	('Rebelle'),
	('Reine de disco'),
	('Bon garçon'),
	('Sportif'),
	('Rock star'),
	('Business man'),
	('Afro'),
	('Anarchie'),
	('Pas de stress man'),
	('Chauve'),
	('Moine'),
	('Clown'),
	('Mononcle'),
	('Punk')

--Couleur
Insert into Couleur values
	('Blond'),
	('Noir'),
	('Blond platine'),
	('Brun'),
	('Auburn'),
	('Chatain'),
	('Sans couleur'),
	('Rose'),
	('Bleu'),
	('Arc-en-ciel')

--SegmentMarche
Insert into SegmentMarche values
	('Réaliste'),
	('Fantaisie')
--Fournisseur
insert into Fournisseur values
	('Poil et Compagnie Québec','514-555-0101', 'info@poiletcompagnieqc.ca',1),
	('Experts Capillaires Québec','514-555-0101', 'info@expertscapillairesqc.ca',1),
	('Déguisements Pour Tous Québec','514-555-0101', 'info@deguisementspourtousqc.ca',2)
--Perruque
insert into Modele values
	('00000A-BLO001-0025',425,12,5,1,1,25,1,1,1),
	('00000A-NOI001-0025',425,16,7,1,2,25,1,1,1),
	('00000A-PLA001-0025',425,8,0,1,3,25,1,1,1),
	('00000A-AUB001-0025',425,10,2,1,4,25,1,1,1),

	('00000B-NOI001-0045',550,7,0,2,2,45,2,1,2),
	('00000B-BLO001-0045',550,10,1,2,1,45,2,1,2),

	('00000C-BLO001-0045',525,11,3,3,1,45,3,1,2),
	('00000C-BLO001-0055',575,10,0,3,1,55,3,1,2),
	('00000C-BRU001-0045',525,15,4,3,4,45,3,1,2),
	('00000C-BRU001-0055',575,6,0,3,4,55,3,1,2),
	('00000C-NOI001-0055',575,10,0,3,2,55,3,1,2),

	('00000D-NOI001-0030',470,10,0,4,2,30,4,1,1),
	('00000D-PLA001-0040',540,10,0,4,3,40,4,1,2),

	('00000E-BLO001-0010',350,10,0,5,1,10,5,1,1),
	('00000E-AUB001-0010',350,10,0,5,5,10,5,1,1),

	('00000F-NOI001-0045',525,10,0,6,2,45,6,1,2),
	('00000F-PLA001-0015',375,10,0,6,3,45,6,1,1),

	('00000G-NOI001-0007',375,10,0,7,5,7,7,1,1),

	('00000H-BLO001-0010',350,10,0,8,1,10,8,2,1),
	('00000H-CHA001-0010',350,10,0,8,6,10,8,2,1),

	('00000I-NOI001-0005',325,10,0,9,2,5,9,2,1),
	('00000I-PLA001-0005',325,10,0,9,3,5,9,2,1),

	('00000J-BRU001-0045',550,10,0,10,4,45,4,2,2),
	('00000J-CHA001-0045',550,10,0,10,6,45,4,2,2),

	('00000K-BRU001-0007',325,10,0,11,4,7,10,2,1),
	('00000K-BLO001-0007',325,10,0,11,1,7,10,2,1),

	('00000L-NOI001-0007',375,10,0,12,2,7,7,2,1),

	('00000M-BLO001-0010',350,10,0,13,1,10,11,2,1),

	('00000N-NOI001-0040',545,10,0,14,4,40,2,2,2),
	('00000K-BLO001-0007',545,10,0,14,6,40,2,2,2),

	('00000O-SAN001-0000',50,10,0,15,7,9,12,2,3),

	('00000P-BRU001-0002',65,10,0,16,4,2,13,3,3),

	('00000Q-ROS001-0010',85,10,0,17,8,10,14,3,3),
	('00000Q-BLE001-0010',85,10,0,17,9,10,14,3,3),
	('00000Q-ARC001-0010',95,10,0,17,10,10,14,3,3),

	('00000Q-ROS001-0010',70,10,0,18,2,5,15,2,3),
	('00000Q-BLE001-0010',70,10,0,18,1,5,15,2,3),

	('00000S-ROS001-0010',95,10,0,19,8,10,16,3,3),
	('00000S-BLE001-0010',95,10,0,19,9,10,16,3,3),
	('00000S-ARC001-0010',105,10,0,19,10,10,16,3,3)
go
/***********************************************Création des procédures************************/
--Fournisseur
create procedure uspSelFournisseur
as 
begin
	select f.IdFournisseur,f.Fournisseur,f.NumTel,f.Courriel,f.IdSegmentMarche, s.Segment from Fournisseur f
	inner join SegmentMarche s on f.IdSegmentMarche=s.IdSegmentMarche
end
go

create procedure uspInsFournisseur @Fournisseur varchar(50),@NumTel char(12),@Courriel varchar(40), @IdSegmentMarche int
as
begin
	insert into Fournisseur(Fournisseur, NumTel, Courriel,IdSegmentMarche)
	values (@Fournisseur,@NumTel,@Courriel,@IdSegmentMarche)
end
go

create procedure uspUpdFournisseur @IdFournisseur int, @Fournisseur varchar(50),@NumTel char(12),@Courriel varchar(40),@IdSegmentMarche int
as
begin
Update Fournisseur
		set Fournisseur=@Fournisseur,
		NumTel=@NumTel,
		Courriel=@Courriel,
		IdSegmentMarche=@IdSegmentMarche
		where IdFournisseur=@IdFournisseur
end
go

create procedure uspDelFournisseur @IdFournisseur int
as
begin
Delete from Fournisseur
		where IdFournisseur=@IdFournisseur
end
go

--Perruque
create procedure uspSelModele
as 
begin
	select p.IdModele,p.Code,p.IdStyle, s.Style,p.IdCoupe, cp.Coupe,p.IdCouleur, c.Couleur,p.Longueur,p.IdGenre, g.Genre,p.Prix,p.QteInventaire,p.QteReserve,p.IdFournisseur, f.Fournisseur from Modele p
	inner join Style s on p.IdStyle=s.IdStyle
	inner join Couleur c on p.IdCouleur=c.IdCouleur
	inner join Genre g on p.IdGenre=g.IdGenre
	inner join Coupe cp on p.IdCoupe=cp.IdCoupe
	inner join Fournisseur F on p.IdFournisseur=f.IdFournisseur
end
go

create procedure uspInsModele @Code varchar(18),@Prix money,@QteInventaire int,@QteReserve int,@IdStyle int,@IdCouleur int,@Longueur int, @IdCoupe int,@IdGenre int, @IdFournisseur int
as
begin
	insert into Modele (Code,Prix,QteInventaire,QteReserve,IdStyle,IdCouleur,Longueur,IdCoupe,IdGenre,IdFournisseur)
	values (@Code,@Prix,@QteInventaire,@QteReserve,@IdStyle,@IdCouleur,@Longueur,@IdCoupe,@IdGenre,@IdFournisseur)
end
go

create procedure uspUpdModele @IdModele int,@Code varchar(18),@Prix money,@QteInventaire int,@QteReserve int,@IdStyle int,@IdCouleur int,@Longueur int, @IdCoupe int,@IdGenre int, @IdFournisseur int
as
begin
Update Modele
		set Code=@Code,
		Prix=@Prix,
		QteInventaire=@QteInventaire,
		QteReserve=@QteReserve,
		IdStyle=@IdStyle,
		IdCouleur=@IdCouleur,
		Longueur=@Longueur,
		IdCoupe=@IdCoupe,
		IdGenre=@IdGenre,
		IdFournisseur=@IdFournisseur
		where IdModele=@IdModele
end
go

create procedure uspDelModele @IdModele int
as
begin
	Delete from Modele
	where IdModele=@IdModele
end
go
--Tables de soutien
create procedure uspSelSegment
as begin
	select IdSegmentMarche,Segment from SegmentMarche
end
go
create procedure uspSelStyle
as begin
	select IdStyle,Style from Style
end
go
create procedure uspSelCoupe
as begin
	select  IdCoupe,Coupe from Coupe
end
go
create procedure uspSelCouleur
as begin
	select IdCouleur, Couleur from Couleur
end
go
create procedure uspSelGenre
as begin
	select IdGenre, Genre from Genre
end
go
/************************Création des identifications*****************************/
--Admin
USE master
GO
CREATE LOGIN AdminPerruques 
WITH PASSWORD = 'abc.123';
GO
ALTER SERVER ROLE sysadmin ADD MEMBER AdminPerruques;
GO

USE Perruques
GO
CREATE USER AdminPerruques FROM LOGIN AdminPerruques;
GO
--Gestion
USE master
GO
CREATE LOGIN GestionPerruques  
WITH PASSWORD = 'abc.123';
GO

USE Perruques
GO
CREATE USER GestionPerruques   FROM LOGIN GestionPerruques ;
GO
GRANT EXECUTE ON uspSelFournisseur to GestionPerruques
GRANT EXECUTE ON uspInsFournisseur to GestionPerruques
GRANT EXECUTE ON uspUpdFournisseur to GestionPerruques
GRANT EXECUTE ON uspDelFournisseur to GestionPerruques
GRANT EXECUTE ON uspSelModele to GestionPerruques
GRANT EXECUTE ON uspInsModele to GestionPerruques
GRANT EXECUTE ON uspUpdModele to GestionPerruques
GRANT EXECUTE ON uspDelModele to GestionPerruques
GRANT EXECUTE ON uspSelSegment to GestionPerruques
GRANT EXECUTE ON uspSelStyle to GestionPerruques
GRANT EXECUTE ON uspSelCoupe to GestionPerruques
GRANT EXECUTE ON uspSelCouleur to GestionPerruques
GRANT EXECUTE ON uspSelGenre to GestionPerruques
GRANT EXECUTE ON uspSelModeleParId to GestionPerruques
GRANT EXECUTE ON uspVenteModele to GestionPerruques
GRANT EXECUTE ON uspLivraisonModele to GestionPerruques
go
/**********************Section 2*****************************/
--Procédures
create procedure uspSelModeleParId @IdModele int
as 
begin
	select p.IdModele,p.Code,p.IdStyle, s.Style,p.IdCoupe, cp.Coupe,p.IdCouleur, c.Couleur,p.Longueur,p.IdGenre, g.Genre,p.Prix,p.QteInventaire,p.QteReserve,p.IdFournisseur, f.Fournisseur from Modele p
	inner join Style s on p.IdStyle=s.IdStyle
	inner join Couleur c on p.IdCouleur=c.IdCouleur
	inner join Genre g on p.IdGenre=g.IdGenre
	inner join Coupe cp on p.IdCoupe=cp.IdCoupe
	inner join Fournisseur F on p.IdFournisseur=f.IdFournisseur
	where IdModele=@IdModele
end
go

create procedure uspVenteModele @IdModele int, @QteVendu int
as
begin
	BEGIN TRY
	 BEGIN TRANSACTION
		update Modele
		set QteReserve=QteReserve+@QteVendu
		where IdModele=@IdModele
	 COMMIT
	END TRY
	BEGIN CATCH
	 ROLLBACK
	 Return
	END CATCH
end
go

create procedure uspLivraisonModele @IdModele int, @QteLivree int
as
begin
	BEGIN TRY
	 BEGIN TRANSACTION
		update Modele
		set QteReserve=QteReserve-@QteLivree,
			QteInventaire=QteInventaire-@QteLivree
		where IdModele=@IdModele
	 COMMIT
	END TRY
	BEGIN CATCH
	 ROLLBACK
	 Return
	END CATCH
end
go

/*****************************Section 3******************/
/***** Création de la TABLE CommandeStatut *****/
CREATE TABLE [dbo].[CommandeStatut](
	[IdCommandeStatut] int IDENTITY(1,1) NOT NULL, -- Champs identité, pour clé primaire
	[Statut] varchar(50) NOT NULL
	
	/***** Ajout d'une CLÉ PRIMAIRE *****/
	CONSTRAINT [PK_CommandeStatut] PRIMARY KEY ([IdCommandeStatut])
)
GO

/***** Création de la TABLE Commande *****/
CREATE TABLE [dbo].[Commande](
	[IdCommande] int IDENTITY(1,1) NOT NULL, -- Champs identité, pour clé primaire
	[NoCommande] varchar(50) NOT NULL,
	[DateCommande] DateTime NOT NULL,
	[IdFournisseur] int NOT NULL,
	[IdCommandeStatut] int NOT NULL
	
	/***** Ajout d'une CLÉ PRIMAIRE *****/
	CONSTRAINT [PK_Commande] PRIMARY KEY ([IdCommande])

	/***** Ajout de CLÉs ÉTRANGÈREs *****/
	CONSTRAINT [FK_CommandeFournisseur] FOREIGN KEY ([IdFournisseur]) REFERENCES [dbo].[Fournisseur] (IdFournisseur),
	CONSTRAINT [FK_CommandeCommandeStatut] FOREIGN KEY ([IdCommandeStatut]) REFERENCES [dbo].[CommandeStatut] (IdCommandeStatut)
	)
GO

/***** Création de la TABLE CommandeDetail *****/
CREATE TABLE [dbo].[CommandeDetail](
	[IdCommandeDetail] int IDENTITY(1,1) NOT NULL, -- Champs identité, pour clé primaire
	[IdCommande] int NOT NULL,
	[IdModele] int NOT NULL,
	[QteCommande] int NOT NULL,
	[QteRecu] int NOT NULL
	
	/***** Ajout d'une CLÉ PRIMAIRE *****/
	CONSTRAINT [PK_CommandeDetail] PRIMARY KEY ([IdCommandeDetail])

	/***** Ajout de CLÉs ÉTRANGÈREs *****/
	CONSTRAINT [FK_CommandeDetailCommande] FOREIGN KEY ([IdCommande]) REFERENCES [dbo].[Commande] (IdCommande),
	CONSTRAINT [FK_CommandeDetailModele] FOREIGN KEY ([IdModele]) REFERENCES [dbo].[Modele] (IdModele),
	)
GO


/***** Ajout d'enregistrements à la table CommandeStatut *****/
--Statut
INSERT INTO [dbo].[CommandeStatut] VALUES ('Commande');
INSERT INTO [dbo].[CommandeStatut] VALUES ('Reçu partiel');
INSERT INTO [dbo].[CommandeStatut] VALUES ('Reçu complet');
INSERT INTO [dbo].[CommandeStatut] VALUES ('Commplété');

/***** Ajout d'enregistrements à la table Commande *****/
--NoCommande, DateCommande, IdFournisseur, idCommandeStatut
INSERT INTO [dbo].[Commande] VALUES ('CMD-1-20200401', '2020-04-01 12:00:00', 1, 1);
INSERT INTO [dbo].[Commande] VALUES ('CMD-1-20200406', '2020-04-06 12:00:00', 1, 2);
INSERT INTO [dbo].[Commande] VALUES ('CMD-2-20200402', '2020-04-02 12:00:00', 2, 1);
INSERT INTO [dbo].[Commande] VALUES ('CMD-2-20200405', '2020-04-05 12:00:00', 2, 3);
INSERT INTO [dbo].[Commande] VALUES ('CMD-3-20200403', '2020-04-03 12:00:00', 3, 1);
INSERT INTO [dbo].[Commande] VALUES ('CMD-3-20200404', '2020-04-04 12:00:00', 3, 2);

/***** Ajout d'enregistrements à la table CommandeDetail *****/
--IdCommande, IdModele, QteCommande, QteRecu
INSERT INTO [dbo].[CommandeDetail] VALUES (1, 1, 5, 0);
INSERT INTO [dbo].[CommandeDetail] VALUES (1, 2, 4, 0);
INSERT INTO [dbo].[CommandeDetail] VALUES (2, 3, 6, 4);
INSERT INTO [dbo].[CommandeDetail] VALUES (2, 4, 2, 0);
INSERT INTO [dbo].[CommandeDetail] VALUES (3, 5, 10, 0);
INSERT INTO [dbo].[CommandeDetail] VALUES (4, 6, 2, 2);
INSERT INTO [dbo].[CommandeDetail] VALUES (4, 7, 2, 2);
INSERT INTO [dbo].[CommandeDetail] VALUES (5, 34, 10, 0);
INSERT INTO [dbo].[CommandeDetail] VALUES (6, 37, 2, 2);
INSERT INTO [dbo].[CommandeDetail] VALUES (6, 31, 1, 0);
go
--Procédures
create procedure uspSelModeleParFournisseur @IdFournisseur int
as
begin
	select p.IdModele,p.Code,p.IdStyle, s.Style,p.IdCoupe, cp.Coupe,p.IdCouleur, c.Couleur,p.Longueur,p.IdGenre, g.Genre,p.Prix,p.QteInventaire,p.QteReserve,p.IdFournisseur, f.Fournisseur from Modele p
	inner join Style s on p.IdStyle=s.IdStyle
	inner join Couleur c on p.IdCouleur=c.IdCouleur
	inner join Genre g on p.IdGenre=g.IdGenre
	inner join Coupe cp on p.IdCoupe=cp.IdCoupe
	inner join Fournisseur F on p.IdFournisseur=f.IdFournisseur
	where f.IdFournisseur=@IdFournisseur
end
go

create procedure uspSelCommande
as
begin
	Select c.NoCommande,c.DateCommande,c.IdFournisseur,f.Fournisseur,c.IdCommandeStatut,cs.Statut from Commande c
	inner join Fournisseur f on c.IdFournisseur=f.IdFournisseur
	inner join CommandeStatut cs on c.IdCommandeStatut=cs.IdCommandeStatut
end
go

create procedure uspSelCommandeOuverte
as
begin
	Select c.NoCommande,c.DateCommande,c.IdFournisseur,f.Fournisseur,c.IdCommandeStatut,cs.Statut from Commande c
	inner join Fournisseur f on c.IdFournisseur=f.IdFournisseur
	inner join CommandeStatut cs on c.IdCommandeStatut=cs.IdCommandeStatut
	where c.IdCommandeStatut<4
end
go

create procedure uspSelCommandeOuverteParFournisseur @IdFournisseur int
as
begin
	Select c.NoCommande,c.DateCommande,c.IdFournisseur,f.Fournisseur,c.IdCommandeStatut,cs.Statut from Commande c
	inner join Fournisseur f on c.IdFournisseur=f.IdFournisseur
	inner join CommandeStatut cs on c.IdCommandeStatut=cs.IdCommandeStatut
	where c.IdCommandeStatut<4 and c.IdFournisseur=@IdFournisseur
end
go

create procedure uspSelCommandeOuverteParId @IdCommande int
as
begin
	Select c.NoCommande,c.DateCommande,c.IdFournisseur,f.Fournisseur,c.IdCommandeStatut,cs.Statut from Commande c
	inner join Fournisseur f on c.IdFournisseur=f.IdFournisseur
	inner join CommandeStatut cs on c.IdCommandeStatut=cs.IdCommandeStatut
	where c.IdCommandeStatut<4 and c.IdCommande=@IdCommande
end
go

create procedure uspSelCommandeDetail
as
begin
	Select cd.IdCommande,cd.IdModele,cd.QteCommande,cd.QteRecu from CommandeDetail cd
	inner join Modele m on cd.IdModele=m.IdModele
	inner join Commande c on cd.IdCommande=c.IdCommande

end
go

