// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDALLNGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDALLNGF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49445 /* ~Die junge Frau lächelt dich freundlich an und verbirgt sich etwas hinter dem Körper ihres männlichen Begleiters. Sie sagt nichts, und als du sie ansprichst, zieht sie sich noch weiter zurück.~ */
  IF ~~ THEN REPLY #49446 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49448 /* ~Sie duckt sich, als sie dich kommen sieht und schaut in alle Richtungen, nur nicht zu dir. Sie wirkt sehr jung.~ */
  IF ~~ THEN REPLY #49449 /* ~"Leb wohl."~ */ EXIT
END
