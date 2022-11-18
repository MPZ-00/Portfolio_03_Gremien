drop table Gremien;
drop table Lehrbeauftrage;
drop table Mitarbeiter;
drop table Professoren;
drop table Student;
drop table Sonstige_Personen;
drop table Personen;
drop table Namen;
drop table Adresse;
drop table Sitzungen;
drop table Tagesordnung;
drop table Mitglieder;
drop table Dokument;
drop table nimmt_teil;
drop table fuehrt_Protokoll_bei;
drop table top;
drop table hat;
drop table erstellt_von;

create table Gremien (
    ID integer primary key,
    Name varchar (50),
    Aufgabengebiete varchar (200),
    offiziell BOOLEAN,
    inoffiziell BOOLEAN,
    Start date,
    Ende date
);

create table Mitglieder (
    ID integer primary key,
    Funktion varchar (200)
);

create table Personen (
    ID integer primary key,
    Geburtsdatum date,
    Geschlecht char (1)
);

create table Namen (
    ID integer primary key,
    Vorname varchar (100),
    Nachname varchar (300)
);

create table Adresse (
    ID integer primary key,
    Strasse varchar (200),
    Hausnummer integer,
    PLZ integer,
    Ort varchar (100)
);

create table Sitzungen (
    ID integer primary key,
    Beginn datetime,
    Ende datetime,
    Einladung_am date,
    oeffentlich boolean,
    Ort varchar (100),
    Protokoll varchar (5000),
    Tagesordnung embeddedlist Tagesordnung
);

create table Tagesordnung (
    ID integer primary key,
    Titel varchar (100),
    Kurzbeschreibung varchar (500),
    Protokolltext varchar (5000)
);

create table Lehrbeauftrage (
    ID integer primary key,
    constraint fk_Lehrbeauftragte_Pers foreign key (ID) references Personen (ID)
);

create table Mitarbeiter (
    ID integer primary key,
    constraint fk_Mitarbeiter_Pers foreign key (ID) references Personen (ID)
);

create table Professoren (
    ID integer primary key,
    constraint fk_Professoren_Pers foreign key (ID) references Personen (ID)
);

create table Student (
    ID integer primary key,
    Studiengang varchar (100),
    Studienbeginn date,
    MatrikelNr integer,
    constraint fk_Student_Pers foreign key (ID) references Personen (ID)
);

create table Sonstige_Personen (
    ID integer primary key,
    constraint fk_Sonstige_Pers foreign key (ID) references Personen (ID)
);

create table Dokument (
    ID integer primary key,
    Author varchar (100),
    Mime_Typ varchar (50),
    Erstelldatum date,
    Inhalt varchar (5000)
);
