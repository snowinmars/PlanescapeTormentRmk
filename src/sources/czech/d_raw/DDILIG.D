// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Starší přísně vypadající žena někam cílevědomě míří. Když si všimla, že se blížíš, prohlédla si tě se znechuceným zamračením.~ */
  IF ~~ THEN REPLY #2890 /* ~Only if you show me your boobies, honey-baby.~ */ EXIT
END
