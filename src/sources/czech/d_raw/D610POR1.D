// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~Místo pod visící větví jemně září... jakoby tam dole byla malá místnost. Když si ji prohlížíš, najednou si uvědomuješ, že se amulet z černých ostnů od Ravel svíjí, jako umírající had.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Omotej si Ravelin amulet kolem levého ukazováčku a projdi portálem.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Prozkoumej amulet a počkej, co se stane.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Nechej visící větev být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~Podivný amulet, používající svá ostnatá semínka, se jemně zakousl do tvé kůže a vyšplhal nahoru na tvou levou ruku, kde se pevně omotal kolem tvého ukazováčku. Světlo v průchodu zazářilo jasněji, pobízí tě k vstupu.~ */
  IF ~~ THEN REPLY #51447 /* ~Projdi portálem.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Nechej visící větev být.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~Prostor pod visící větví lehce září. Jakoby odhaloval nějakou místnost. Všiml sis, že šedý vlas, který si Ravel vytrhla z hlavy, se pomalu kroutí, jako vývrtka.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Omotej si Ravelin vlas kolem levého ukazováčku a vstup do portálu.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Počkej, co vlas udělá.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Nechej visící větev být.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~Vlas se pomalu vyplazil po tvé levé ruce, omotal se kolem zápěstí a pak zamířil na tvůj ukazováček, kde se pevně omotal. Jako v odpověď na jeho akci se záře zitenzívněla, zvouc tě, ať vstoupíš dovnitř.~ */
  IF ~~ THEN REPLY #51452 /* ~Projdi portálem.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Projdi portálem.~ */ EXIT
END
