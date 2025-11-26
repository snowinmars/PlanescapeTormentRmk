// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~Vidíš strážného Harmonických. Obezřetně sleduje tvůj příchod.~ */
  IF ~~ THEN REPLY #37930 /* ~"Dobrý den."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~Kývl na tebe."Dobrý den, občane."~ */
  IF ~~ THEN REPLY #37932 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~Zavrtěl hlavou. "Jsem ve službě, občane. Nemám čas na tvé otázky. Běž s nimi opruzovat někoho jiného."~ */
  IF ~~ THEN REPLY #37934 /* ~"Nebude to dlouho trvat."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~Zamračil se na tebe. "Nemám čas na otázky, občane. Jdi pryč."~ */
  IF ~~ THEN REPLY #37936 /* ~"Fajn. Sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~Vidíš stráž Harmonických. Mračí se na tebe. "Tak znovu: Dobrý den, občane."~ */
  IF ~~ THEN REPLY #37937 /* ~"Mám několik otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"Sbohem."~ */ EXIT
END
