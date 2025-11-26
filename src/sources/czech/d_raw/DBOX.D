// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBOX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBOX~

IF ~  Global("Demonbox","Global",0)
~ THEN BEGIN 0 // from:
  SAY #48933 /* ~Vidíš dobře udělanou zdobenou skřínku, která má do přední části zabudovaný drahokam. Připadá ti, jako by z ní vycházel pocit nebezpečí a zla.~ */
  IF ~~ THEN REPLY #48934 /* ~Otevři skříňku.~ */ DO ~SetGlobal("DemonBox","GLOBAL",1)
SetGlobal("Gamma","Global",1)
DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,1,0,0)
CreateCreatureAtFeet("BoxDmn1")
~ EXIT
  IF ~~ THEN REPLY #48935 /* ~Odlož skříňku. ~ */ EXIT
END

IF ~  GlobalGT("Demonbox","Global",1)
~ THEN BEGIN 1 // from:
  SAY #60318 /* ~Vidíš nádherně zdobenou bedýnku s velkým rudým drahokamem na víku. Už z ní nadále nevyzařuje pocit hrůzy.~ */
  IF ~~ THEN REPLY #60319 /* ~Otevři bedýnku.~ */ DO ~DestroyPartyItem("DBox",TRUE)
GiveItemCreate("DGem",Protagonist,0,0,0)
~ EXIT
  IF ~~ THEN REPLY #60320 /* ~Odlož bedýnku.~ */ EXIT
END
