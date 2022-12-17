insert into Gremien (ID, Name, offiziell, inoffiziell, Beginn, Ende) values (1, 'Hochschulrat', 1, 0, to_date('01.01.1990', 'dd.mm.YYYY'), to_date('01.09.2050', 'dd.mm.YYYY'));
insert into Gremien (ID, Name, offiziell, inoffiziell, Beginn, Ende) values (2, 'Fachschaft E', 1, 0, to_date('01.01.1990', 'dd.mm.YYYY'), to_date('01.09.2050', 'dd.mm.YYYY'));
insert into Gremien (ID, Name, offiziell, inoffiziell, Beginn, Ende) values (3, 'Studienrat', 1, 0, to_date('01.01.1995', 'dd.mm.YYYY'), to_date('01.09.2040', 'dd.mm.YYYY'));

insert into Aufgabengebiete (ID, Ag_ID, Aufgabengebiet) values (1, 1, 'Studenten');
insert into Aufgabengebiete (ID, Ag_ID, Aufgabengebiet) values (2, 1, 'Verwaltung');
insert into Aufgabengebiete (ID, Ag_ID, Aufgabengebiet) values (3, 2, 'E');
insert into Aufgabengebiete (ID, Ag_ID, Aufgabengebiet) values (4, 1, 'T');
insert into Aufgabengebiete (ID, Ag_ID, Aufgabengebiet) values (5, 3, 'Haushaltsplan');

insert into Personen values (1, to_date('12.06.1960', 'dd.mm.YYYY'), 'm');
insert into Professoren (ID) values (1);
insert into Namen (ID, Vorname, Nachname) values (1, 'Rick', 'Sanchez');
insert into Adresse (ID, Strasse, Hausnummer, PLZ, Ort) values (1, 'Bachstr.', 3, 88212, 'Ravensburg');

insert into Personen values (2, to_date('12.06.1955', 'dd.mm.YYYY'), 'm');
insert into Professoren (ID) values (2);
insert into Namen (ID, Vorname, Nachname) values (2, 'Morty', 'Sanchez');
insert into Adresse (ID, Strasse, Hausnummer, PLZ, Ort) values (2, 'Turmstr.', 17, 88212, 'Ravensburg');

insert into Personen values (3, to_date('02.08.2001', 'dd.mm.YYYY'), 'w');
insert into Namen (ID, Vorname, Nachname) values (3, 'Hanna', 'Moos');
insert into Adresse (ID, Strasse, Hausnummer, PLZ, Ort) values (3, 'Obere Str.', 57, 12209, 'Berlin');
insert into Student (ID, Studiengang, Studienbeginn, MatrikelNr) values (3, 'AI', to_date('01.09.2020', 'dd.mm.YYYY'), 1000);

insert into Personen values (4, to_date('15.03.1999', 'dd.mm.YYYY'), 'w');
insert into Namen (ID, Vorname, Nachname) values (4, 'Marina', 'Moos');
insert into Adresse (ID, Strasse, Hausnummer, PLZ, Ort) values (4, 'Forsterstr.', 50, 67000, 'Mannheim');
insert into Student (ID, Studiengang, Studienbeginn, MatrikelNr) values (4, 'AI', to_date('01.09.2020', 'dd.mm.YYYY'), 1001);

insert into Dokument (ID, Mime_Typ, Erstelldatum, Inhalt) values (1, 'Text', to_date('19.03.2020', 'dd.mm.YYYY'), 'Enim commodo exercitation ut elit dolore magna sint dolore dolore do anim sit excepteur.');
insert into Dokument (ID, Mime_Typ, Erstelldatum, Inhalt) values (2, 'Bild', to_date('19.04.2021', 'dd.mm.YYYY'), null);
insert into Dokument (ID, Mime_Typ, Erstelldatum, Inhalt) values (3, 'Excel', to_date('10.10.2011', 'dd.mm.YYYY'), 'Laborum incididunt cupidatat sit mollit eiusmod.');
insert into Dokument (ID, Mime_Typ, Erstelldatum, Inhalt) values (4, 'Excel', to_date('21.11.2021', 'dd.mm.YYYY'), 'Nostrud nisi amet anim dolor. Pariatur esse est laborum anim consequat reprehenderit. Pariatur voluptate est sit sunt commodo ullamco consequat enim ea excepteur. Esse reprehenderit exercitation ut laboris anim aliquip in adipisicing minim et non. Irure anim nulla id dolor ad pariatur adipisicing qui esse deserunt mollit sit ea. Ea cillum sit cillum ut amet occaecat aliquip. Excepteur est laboris et incididunt esse laborum ullamco reprehenderit fugiat mollit irure sunt ullamco.');

insert into erstellt_von (ID_Author, ID_Dokument) values (1, 4);
insert into erstellt_von (ID_Author, ID_Dokument) values (2, 4);
insert into erstellt_von (ID_Author, ID_Dokument) values (3, 2);
insert into erstellt_von (ID_Author, ID_Dokument) values (4, 1);

insert into Tagesordnung (ID, Titel, Kurzbeschreibung, Protokolltext) values (1, 'Wahl des neuen AStA', 'Wahlen der Verfasste Studierendenschaft', null);
insert into Tagesordnung (ID, Titel, Kurzbeschreibung, Protokolltext) values (2, 'StupApfel', 'Gratis-Obst für die Studierenden', null);
insert into Tagesordnung (ID, Titel, Kurzbeschreibung, Protokolltext) values (3, 'Sonstiges', '', null);
insert into Tagesordnung (ID, Titel, Kurzbeschreibung, Protokolltext) values (4, 'Ersti Hütte', 'Ankündigung', null);

insert into Sitzungen (ID, Beginn, Ende, Einladung_am, oeffentlich, Ort, Protokoll) values (1, to_timestamp('06.12.2022 14:00:00', 'dd.mm.YYYY HH24:MI:SS'), to_timestamp('06.12.2022 16:00:00', 'dd.mm.YYYY HH24:MI:SS'), to_date('01.11.2022', 'dd.mm.YYYY'), 0, 'Gebäude H', null);
insert into Sitzungen (ID, Beginn, Ende, Einladung_am, oeffentlich, Ort, Protokoll) values (2, to_timestamp('23.11.2022 20:00:00', 'dd.mm.YYYY HH24:MI:SS'), to_timestamp('23.11.2022 21:30:00', 'dd.mm.YYYY HH24:MI:SS'), to_date('07.11.2022', 'dd.mm.YYYY'), 1, 'Gebäude B', null);
insert into Sitzungen (ID, Beginn, Ende, Einladung_am, oeffentlich, Ort, Protokoll) values (3, to_timestamp('04.12.2022 14:00:00', 'dd.mm.YYYY HH24:MI:SS'), to_timestamp('04.12.2022 16:00:00', 'dd.mm.YYYY HH24:MI:SS'), to_date('23.10.2022', 'dd.mm.YYYY'), 1, 'Gebäude C', null);

insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (1, 1, 'Vorsitzender');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (3, 2, 'Vorsitzender');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (1, 3, 'Leiter');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (2, 4, 'Leiter');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (1, 4, 'Lehrling');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (1, 2, 'Gast');
insert into Mitglieder (ID_Gremien, ID_Personen, Funktion) values (2, 3, 'Gast');

insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (1, 1);
insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (1, 2);
insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (2, 1);
insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (2, 3);
insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (3, 3);
insert into nimmt_teil (ID_Personen, ID_Sitzungen) values (4, 2);

insert into top (ID_Sitzung, ID_Tagesordnung) values (1, 1);
insert into top (ID_Sitzung, ID_Tagesordnung) values (1, 2);
insert into top (ID_Sitzung, ID_Tagesordnung) values (2, 3);
insert into top (ID_Sitzung, ID_Tagesordnung) values (2, 4);

insert into hat (ID_Gremien, ID_Sitzungen) values (1, 1);
insert into hat (ID_Gremien, ID_Sitzungen) values (2, 2);
insert into hat (ID_Gremien, ID_Sitzungen) values (1, 3);

insert into fuehrt_Protokoll_bei (ID_Personen, ID_Sitzungen) values (1, 1);
insert into fuehrt_Protokoll_bei (ID_Personen, ID_Sitzungen) values (2, 2);
insert into fuehrt_Protokoll_bei (ID_Personen, ID_Sitzungen) values (3, 3);

insert into Antrag (ID, Titel, Text, Ergebnis, Angenommen) values (1, 'Wahlen', 'Aliqua quis est commodo amet amet culpa in cillum eu.', 'ja', '1');
insert into Antrag (ID, Titel, Text, Ergebnis, Angenommen) values (2, 'Urlaub', null, 'nein', '0');
insert into Antrag (ID, Titel, Text, Ergebnis, Angenommen) values (3, 'Rubber Ducky', 'Jut als Motivation', 'enthaltung', '1');

insert into stellt (ID_Person, ID_Antrag) values (1, 2);
insert into stellt (ID_Person, ID_Antrag) values (2, 1);
insert into stellt (ID_Person, ID_Antrag) values (4, 3);

insert into gehoert_zu (ID_Antrag, ID_TOP) values (1, 1);
insert into gehoert_zu (ID_Antrag, ID_TOP) values (2, 3);
insert into gehoert_zu (ID_Antrag, ID_TOP) values (3, 3);

insert into fuer (ID_Dokument, ID_TOP) values (1, 1);
insert into fuer (ID_Dokument, ID_TOP) values (2, 4);
insert into fuer (ID_Dokument, ID_TOP) values (2, 2);
insert into fuer (ID_Dokument, ID_TOP) values (3, 3);
insert into fuer (ID_Dokument, ID_TOP) values (4, 4);
insert into fuer (ID_Dokument, ID_TOP) values (4, 1);

commit;