// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~MBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~Tu vois une boîte joliment travaillée décorée d'une imposante pierre précieuse rouge montée sur le devant. Des sentiments de terreur semblent en émaner.~ */
  IF ~~ THEN REPLY #48934 /* ~Ouvre la boîte.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~Range la boîte.~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~Tu vois une boîte joliment travaillée et ornée d'une imposante pierre précieuse rouge montée sur le devant. Plus aucun sentiment de terreur n'en émane.~ */
  IF ~~ THEN REPLY #60319 /* ~Ouvre la boîte.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~Range la boîte.~ */ EXIT
END
