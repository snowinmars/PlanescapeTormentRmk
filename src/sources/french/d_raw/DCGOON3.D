// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53780 /* ~"Bige, tu viens de prendre la mauvaise porte. Ce sera la toute dernière erreur de ta vie."~ */
  IF ~~ THEN REPLY #53781 /* ~Bats-toi.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
