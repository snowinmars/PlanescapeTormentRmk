// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Vidíš mladého muže se špatně padnoucími šaty. Dívá se na tebe znuděným pohledem.~ */
  IF ~~ THEN REPLY #3165 /* ~"Zdravím."~ */ EXIT
END
