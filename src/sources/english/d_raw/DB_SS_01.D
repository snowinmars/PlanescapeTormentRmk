// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~This clear stone - held in a mesh of engraved silver bands - pulses with a brilliant inner light. Inscribed into its base is the word 'YVES.'~ */
  IF ~~ THEN REPLY #54093 /* ~Leave.~ */ EXIT
END
