// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~This grayish-white stone - held in a mesh of engraved silver bands - pulses with light. Something was once inscribed into its base, but the writing has been scoured away.~ */
  IF ~~ THEN REPLY #54102 /* ~Leave.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~I found a hidden chamber beneath the Brothel that contained a number of glowing stones - ten, in fact. One of them was 'blank'... something had once been inscribed upon the base, but had been scoured away.~ */ EXIT
END
