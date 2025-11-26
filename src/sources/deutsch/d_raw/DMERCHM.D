// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~Dieser Mann wirbelt herum, als du näher kommst, und verbeugt sich. "Sir... Ihr seid bestimmt auf der Suche nach den feinsten Waren, die Sigil zu bieten hat. Hier seid Ihr goldrichtig."~ */
  IF ~~ THEN REPLY #9371 /* ~"Ähh... Dann werde ich so lange warten, bis du ein Ladeninventar hast."~ */ EXIT
END
