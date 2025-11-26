// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~This translucent green stone - held in a mesh of engraved silver bands - pulses with bright green light. Inscribed into its base is the word 'ECCO.'~ */
  IF ~~ THEN REPLY #54099 /* ~Leave.~ */ EXIT
END
