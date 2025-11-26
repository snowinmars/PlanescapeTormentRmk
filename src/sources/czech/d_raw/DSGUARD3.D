// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~Vidíš strážného Harmonických. Znuděně se na tebe dívá.~ */
  IF ~~ THEN REPLY #37961 /* ~"Zdravíčko."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Ignoruj ho.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~Pokývl hlavou. "Tobě taky, občane."~ */
  IF ~~ THEN REPLY #37963 /* ~"Mám několik otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"U Harmonických i v této čtvrti jsem nový. S tvými otázkami ti asi moc nepomůžu." ~ */
  IF ~~ THEN REPLY #37965 /* ~"Můžeš mi alespoň říct, co se tu děje?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"Fajn, Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~Přikývl. "Těmto lidem byly prokázány menší zločiny. Byli odsouzeni na několik let služby a jsou na prodej." Na chvíli se odmlčel. "To je vše, co můžu říct, občane."~ */
  IF ~~ THEN REPLY #37967 /* ~"Aha. Můžu se ještě na něco zeptat?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~Zavrtěl hlavou. "Ve službě musím být ostražitý, občane. Musím tě požádat, abys už šel." ~ */
  IF ~~ THEN REPLY #37969 /* ~"Dobře, sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~Vidíš strážného Harmonických. Když tě spatřil přicházet, pokývl hlavou. "Znovu se setkáváme, občane. Jak ti mohu pomoci?"~ */
  IF ~~ THEN REPLY #37970 /* ~"Mám pár otázek..."~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"No nic. Sbohem."~ */ EXIT
END
