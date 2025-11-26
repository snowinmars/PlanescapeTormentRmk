// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~This reddish-orange stone - held in a mesh of engraved silver bands - pulses with warm orange light. Inscribed into its base is the word 'DOLORA.'~ */
  IF ~~ THEN REPLY #54095 /* ~Leave.~ */ EXIT
END
