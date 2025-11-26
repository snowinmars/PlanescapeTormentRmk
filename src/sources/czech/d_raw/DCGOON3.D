// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53780 /* ~"Vole, právě jsi prošel blbejma dveřma. A to je ten poslední vomyl, co si kdy spáchal, blbče."~ */
  IF ~~ THEN REPLY #53781 /* ~Bojuj.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
