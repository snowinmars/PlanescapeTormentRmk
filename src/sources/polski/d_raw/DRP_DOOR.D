// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~Ten łuk prowadzi jedynie parę centymetrów w głąb małego budynku, po czym jest zablokowany przez litą ścianę odpadów. Śmiecie upchane są tak mocno, że równie dobrze mogłyby stanowić kamienie i zaprawę murarską.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Odejdź.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Placu Szmaciarzy natknąłem się na nieprzebyte, wypełnione odpadkami sklepione przejście. Ciekawe, że liczne ślady stóp prowadzą do niego i nie zawracają. Musi istnieć jakiś sposób na przebycie tej przeszkody. Może któryś z mieszkańców Placu będzie mógł mi w tym pomóc?~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Odejdź.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Placu Szmaciarzy natknąłem się na nieprzebyte, wypełnione odpadkami sklepione przejście. Ciekawe, że liczne ślady stóp prowadzą do niego i nie zawracają. Musi istnieć jakiś sposób na przebycie tej przeszkody. Może któryś z mieszkańców Placu będzie mógł mi w tym pomóc?~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Odejdź.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~Na Placu Szmaciarzy natknąłem się na nieprzebyte, wypełnione odpadkami sklepione przejście. Ciekawe, że liczne ślady stóp prowadzą do niego i nie zawracają. Musi istnieć jakiś sposób na przebycie tej przeszkody. Może któryś z mieszkańców Placu będzie mógł mi w tym pomóc?~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Odejdź.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~Ten łuk prowadzi jedynie parę centymetrów w głąb małego budynku, po czym jest zablokowany przez litą ścianę odpadów. Śmiecie upchane są tak mocno, że równie dobrze mogłyby stanowić kamienie i zaprawę murarską. Jednak, gdy podchodzisz bliżej zarys łuku zaczyna migotać. Zauważasz, że garść śmieci, którą niesiesz również zaczyna migotać.~ */
  IF ~~ THEN REPLY #48357 /* ~Rzuć śmieci w łuk.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Cofnij się i odejdź.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Cofnij się i odejdź.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~To jest portal łączący Plac Szmaciarzy z wejściem na Śmieciowisko. Niestety, nie masz w tej chwili żadnych śmieci, których używa się do uaktywnienia wejścia.~ */
  IF ~~ THEN REPLY #48360 /* ~Odejdź.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~To jest portal łączący Plac Szmaciarzy z wejściem na Śmieciowisko. Właśnie zaczął on migotać z powodu bliskości śmieci, które masz przy sobie.~ */
  IF ~~ THEN REPLY #48362 /* ~Rzuć śmieci w łuk.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~Ściana odpadów migota, chwieje się, i zdaje się składać sama w sobie, ukazując za sobą otwartą przestrzeń... wydaje się, że w obrębie łuku utworzył się korytarz lub portal.~ */
  IF ~~ THEN REPLY #48365 /* ~Gotowe.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~W chwili, gdy odwracasz się, aby odejść, zauważasz ślady stóp, które prowadzą w stronę łuku... i nie zawracają. Wygląda na to, jakby tej w okolicy występował spory ruch w kierunku łuku, najwidoczniej prowadzącego do nikąd...~ */
  IF ~~ THEN REPLY #64989 /* ~"Hmmm. Być może ktoś z tutejszych wie, jak się przedostać na drugą stronę..."~ */ EXIT
END
