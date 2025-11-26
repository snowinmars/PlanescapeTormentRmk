// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~Vidíš mladou ženu, která se zjevně velice nudí. Když ses přiblížil, ožila. "Přeju ti krásnej den, příteli. Můžu ti nějak pomoct?"~ */
  IF ~~ THEN REPLY #58501 /* ~"Zdravím."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Ignoruj ji.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~Usmála se. "Jsem Gildea. Chtěl bys vidět mé zboží?"~ */
  IF ~~ THEN REPLY #58504 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"Ne, sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~Zavrtěla hlavou. "Jsem jenom prostá obchodnice, nemám pro tebe žádné odpovědi."~ */
  IF ~~ THEN REPLY #58508 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~Vidíš obchodníci Gildeu. Usmála se na tebe. "Vítej zpátky. Co pro tebe můžu udělat?"~ */
  IF ~~ THEN REPLY #58511 /* ~"Ukaž mi své zboží."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"Nic, sbohem."~ */ EXIT
END
