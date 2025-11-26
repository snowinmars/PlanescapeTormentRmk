// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53780 /* ~"Dussel, du bist durch die falsche Tür gegangen. Das wird der letzte Fehler sein, den du gemacht hast."~ */
  IF ~~ THEN REPLY #53781 /* ~Kämpfe.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
