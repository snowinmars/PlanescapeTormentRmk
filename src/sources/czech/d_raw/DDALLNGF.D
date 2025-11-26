// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~Tato mladá žena se na tebe mile usmála a přitiskla se k boku muže, s kterým zde je. Nic neříká a jak jsi na ni začal mluvit, schoulila se ještě víc.~ */
  IF ~~ THEN REPLY #49446 /* ~"Tedy sbohem."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~Při tvém příchodu uhnula pohledem a dívá se všude možně, jen ne na tebe."~ */
  IF ~~ THEN REPLY #49449 /* ~"Sbohem."~ */ EXIT
END
