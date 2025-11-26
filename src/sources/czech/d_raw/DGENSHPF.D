// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~Vidíš ženu, která si lenivě prohlíží zboží.~ */
  IF ~~ THEN REPLY #36035 /* ~"Zdravím."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Ignoruj ženu.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~Koukla se na tebe. "Ano, kámo?"~ */
  IF ~~ THEN REPLY #36038 /* ~"Mám nějaké otázky..."~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"To nic. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~Mávla na tebe. "Na to nemám čas, kámo. Nech mě být." Odvrátila se od tebe.~ */
  IF ~~ THEN REPLY #36041 /* ~Odejdi.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~Zákaznice si všimla tvého příchodu a obrátila se k tobě zády. Ignoruje tvé pokusy o začátek rozhovoru.~ */
  IF ~~ THEN REPLY #36043 /* ~Odejdi.~ */ EXIT
END
