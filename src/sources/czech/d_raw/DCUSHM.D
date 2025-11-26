// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~Tento muž je patrně zaměstnán zkoumáním zboží vystaveného na stáncích. Tobě samotnému nevěnuje žádnou pozornost.~ */
  IF ~~ THEN REPLY #9351 /* ~"Eh... pardon že jsem vás rušil."~ */ EXIT
END
