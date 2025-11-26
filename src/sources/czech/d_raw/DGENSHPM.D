// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~Vidíš muže, který si lenivě prohlíží zboží.~ */
  IF ~~ THEN REPLY #36045 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Ignoruj muže.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~Kouknul se na tebe. "Ano, kámo?"~ */
  IF ~~ THEN REPLY #36048 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~Mávl na tebe. "Na to nemám čas, kámo. Nech mě být." Odvrátil se od tebe.~ */
  IF ~~ THEN REPLY #36051 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~Zákazník si všiml tvého příchodu a obrátil se k tobě zády. Ignoruje tvé pokusy o začátek rozhovoru.~ */
  IF ~~ THEN REPLY #36053 /* ~Odejdi.~ */ EXIT
END
