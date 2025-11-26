// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~Průchod je vytvořený ohnutou větví stromu, který vyrostl ze země bludiště a pak se k ní v oblouku ohnul. Když ses přiblížil, místo pod obloukem začíná jemně zářit... vypadá to, že vede do nějaké podivné zahrady s černými ostny.~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Jdi na levou stranu oblouku, poškrábej kůru nehtem a pak projdi portálem.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Prozkoumej průchod.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Nechej průchod být.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~Když zkoumáš průchod, všiml sis, že levá strana je poškrábaná, jakoby do ní někdo několikrát zaryl nožem. Ale samotné stopy nevypadají jako po čepeli nože... spíše jako od něčích drápů.~ */
  IF ~~ THEN REPLY #51437 /* ~Rýpni do stromu nehtem.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Nechej to raději být.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~Zarazil jsi své nehty do kůry a k tvému překvapení dřevo před nehty ustoupilo. Zarazil jsi prsty hlouběji a jako odpověď se v průchodu objevila záře, která tě láká, ať do ní vstoupíš.~ */
  IF ~~ THEN REPLY #51440 /* ~Projdi průchodem.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Nechej průchod být.~ */ EXIT
END
