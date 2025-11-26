// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~Vidíš obyčejně vyhlížející ženu, která se tváří podrážděně.~ */
  IF ~~ THEN REPLY #48980 /* ~"Zdravím."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Nechej ženu být.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"Asi si toho moc nepamatuješ, co? Říkala jsem ti, že chci být sama."~ */
  IF ~~ THEN REPLY #48983 /* ~"Hmm, vidím, že se tvoje nálada nezměnila."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"Copak v tomhle městě není ani jedno místečko, kde bych mohla být chvíli sama?"~ */
  IF ~~ THEN REPLY #48986 /* ~"Proč chceš být sama?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"Sama znamená 'bez tebe.' Nech mě být."~ */
  IF ~~ THEN REPLY #48989 /* ~"Sbohem."~ */ EXIT
END
