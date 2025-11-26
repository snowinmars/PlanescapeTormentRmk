// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34199 /* ~This violet stone - held in a mesh of engraved silver bands - pulses with deep purple light. Inscribed into its base is the word 'MARISSA.'~ */
  IF ~~ THEN REPLY #54097 /* ~Leave.~ */ EXIT
END
