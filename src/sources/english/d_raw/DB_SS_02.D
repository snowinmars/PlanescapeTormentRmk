// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~This amber-colored stone - held in a mesh of engraved silver bands - pulses with soft yellow light. Inscribed into its base are the words 'KIMASXI ADDERTONGUE.'~ */
  IF ~~ THEN REPLY #54094 /* ~Leave.~ */ EXIT
END
