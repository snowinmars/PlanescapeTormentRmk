// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~This young woman smiles prettily at you and shrinks into the side of the man she's with. She says nothing, and when you speak to her, she withdraws even further.~ */
  IF ~~ THEN REPLY #49446 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~She ducks back when she sees you coming, looking anywhere but at you. She seems very young.~ */
  IF ~~ THEN REPLY #49449 /* ~"Farewell."~ */ EXIT
END
