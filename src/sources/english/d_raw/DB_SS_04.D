// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~This transparent, bluish-white stone - held in a mesh of engraved silver bands - pulses with soft blue light. Inscribed into its base is the word 'KESSAI-SERRIS.'~ */
  IF ~~ THEN REPLY #54096 /* ~Leave.~ */ EXIT
END
