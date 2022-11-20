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
    Ende date,
    constraint fk_Gremien_hat foreign key (ID) references hat (ID),
    constraint fk_Gremien_Mitglieder foreign key (ID) references Mitglieder (ID)
);

create table Mitglieder (
    ID integer primary key,
    Funktion varchar (200),
    constraint fk_Mitglieder_Gremien foreign key (ID) references Gremien (ID),
    constraint fk_Mitglieder_Personen foreign key (ID) references Personen (ID)
);

create table Personen (
    ID integer primary key,
    Geburtsdatum date,
    Geschlecht char (1),
    constraint fk_Personen_Mitglieder foreign key (ID) references Mitglieder (ID),
    constraint fk_Personen_Adressen foreign key (ID) references Adresse (ID),
    constraint fk_Personen_Namen foreign key (ID) references Namen (ID)
);

create table Namen (
    ID integer primary key,
    Vorname varchar (100),
    Nachname varchar (300),
    constraint fk_Namen_Personen foreign key (ID) references Personen (ID)
);

create table Adresse (
    ID integer primary key,
    Strasse varchar (200),
    Hausnummer integer,
    PLZ integer,
    Ort varchar (100),
    constraint fk_Adresse_Personen foreign key (ID) references Personen (ID)
);

create table Sitzungen (
    ID integer primary key,
    Beginn datetime,
    Ende datetime,
    Einladung_am date,
    oeffentlich boolean,
    Ort varchar (100),
    Protokoll varchar (5000),
    constraint fk_Sitzungen_hat foreign key (ID) references Gremien (ID)
);

create table Tagesordnung (
    ID integer primary key,
    Titel varchar (100),
    Kurzbeschreibung varchar (500),
    Protokolltext varchar (5000),
    constraint fk_Tagesordnung_top foreign key (ID) references top (ID)
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

create table nimmt_teil (
    ID integer primary key,
    constraint fk_nt_Person foreign key (ID) references Personen (ID),
    constraint fk_nt_Sitzung foreign key (ID) references Sitzungen (ID)
);

create table fuehrt_Protokoll_bei (
    ID integer primary key,
    constraint fk_fPb_Person foreign key (ID) references Personen (ID),
    constraint fk_fPb_Person foreign key (ID) references Sitzungen (ID)
);

create table top (
    ID integer primary key,
    constraint fk_top_Sitzungen foreign key (ID) references Sitzungen (ID),
    constraint fk_top_Tagesordnung foreign key (ID) references Tagesordnung (ID)
);

create table hat (
    ID integer primary key,
    constraint fk_hat_Gremien foreign key (ID) references Gremien (ID),
    constraint fk_hat_Sitzungen foreign key (ID) references Sitzungen (ID)
);

create table erstellt_von (
    ID integer primary key,
    ID_Dokument integer,
    constraint fk_ert_Personen foreign key (ID) references Personen (ID),
    constraint fk_ert_Dokument foreign key (ID_Dokument) references Dokument (ID)
);
