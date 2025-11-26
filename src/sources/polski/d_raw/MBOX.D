// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : MBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~MBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~Widzisz porządnie wykonane ozdobne pudełko z dużym czerwonym kamieniem na jego przedniej ściance. Emanuje z niego uczucie przerażenia.~ */
  IF ~~ THEN REPLY #48934 /* ~Otwórz pudełko.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~Odłóż pudełko.~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~Widzisz porządnie wykonane ozdobne pudełko z dużym czerwonym kamieniem na jego przedniej ściance. Uczucie przerażenia już z niego nie emanuje.~ */
  IF ~~ THEN REPLY #60319 /* ~Otwórz pudełko.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~Odłóż pudełko.~ */ EXIT
END
