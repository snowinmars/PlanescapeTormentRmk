// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~This translucent indigo stone - held in a mesh of engraved silver bands - pulses with deep blue light. Inscribed into its base is the word 'JULIETTE.'~ */
  IF ~~ THEN REPLY #54101 /* ~Leave.~ */ EXIT
END
