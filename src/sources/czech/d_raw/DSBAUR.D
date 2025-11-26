// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~Vidíš vysokou postavu tvora stojícího před tebou. Nižší část jeho těla se podobá  koze. Nicméně, hned nad jeho silnýma nohama jeho tvar má spíše lidský vzhled, s lidským torsem, rukama a hlavou - vše je schováno pod naleštěným brněním. Tvorovy oči jsou zavřeny a vypadá, že spí.~ */
  IF ~~ THEN REPLY #45382 /* ~"Buď zdráv."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Nechej toho tvora spát..~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~Tvor krátce zachrápe, ale jeho oči zůstávají zavřeny. Zjevně spí velice tvrdě.~ */
  IF ~~ THEN REPLY #45384 /* ~Nechej toho tvora spát..~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~Polomuž, polokoza stále hluboce spí. ~ */
  IF ~~ THEN REPLY #45385 /* ~Nechej toho tvora spát..~ */ EXIT
END
