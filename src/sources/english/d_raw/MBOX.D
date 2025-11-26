// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~MBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~You see a well-crafted ornate box with a large red gem mounted on the face of the box. Feelings of dread seem to emanate from it.~ */
  IF ~~ THEN REPLY #48934 /* ~Open the box.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~Put the box away.~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~You see a well-crafted ornate box with a large red gem mounted on the face of the box. Feelings of dread no longer emanate from the box.~ */
  IF ~~ THEN REPLY #60319 /* ~Open box.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~Put the box away.~ */ EXIT
END
