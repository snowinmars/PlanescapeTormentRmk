// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37736 /* ~Dostrzegasz strażnika Harmonium. Patroluje swój wytyczony teren bardzo uważnie. Nie wydaje się być zainteresowany rozmową z tobą.~ */
  IF ~~ THEN REPLY #37755 /* ~Zostaw go w spokoju.~ */ EXIT
END
