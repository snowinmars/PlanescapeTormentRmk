// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53780 /* ~"Trepie, wszedłeś w nie te drzwi, co trzeba. To ostatni błąd, jaki miałeś szansę popełnić."~ */
  IF ~~ THEN REPLY #53781 /* ~Walcz.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
