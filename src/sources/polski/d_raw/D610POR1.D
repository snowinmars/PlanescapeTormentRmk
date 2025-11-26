// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~Otwór znajdujący się poniżej tej zwisającej gałęzi, mieni się delikatnie... Zdaje się, że znajduje się za nim mały pokój, obrośnięty dzikimi jeżynami. Gdy przyglądasz mu się uważnie, zauważasz nagle, że pokryty czarnymi kolcami amulet, który dała ci Ravela, zaczyna się wić jak umierający wąż.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Owiń amulet Raveli wokół wskazującego palca lewej ręki i przejdź przez portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Przyjrzyj się uważnie amuletowi, poczekaj chwilę i zobacz, co się stanie.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Zostaw zwisającą gałąź w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~Ten dziwny amulet wgryza się delikatnie w twoją skórę za pomocą swoich kolczastych nasion i wykorzystując kolce jak stopnie, wspina się na twoją lewą rękę, gdzie owija się szczelnie wokół wskazującego palca. W odpowiedzi na to, światło pod gałęzią zaczyna mienić się intensywniej, zachęcając cię do przejścia przez otwór.~ */
  IF ~~ THEN REPLY #51447 /* ~Przejdź przez portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Zostaw zwisającą gałąź w spokoju.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~Otwór znajdujący się poniżej tej zwisającej gałęzi mieni się delikatnie; zdaje się, że prowadzi on do małego pokoju, obrośnięty dzikimi jeżynami. Zauważasz, że szary włos, który Ravela wyrwała sobie z głowy, zaczyna się powoli skręcać jak korkociąg.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Owiń amulet Raveli wokół wskazującego palca lewej ręki i przejdź przez portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Poczekaj chwilę i zobacz, co zrobi włos.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Zostaw zwisającą gałąź w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~Włos powoli oplata twoje lewe ramię, zatacza krąg wokół twojego nadgarstka, po czym owija się szczelnie wokół wskazującego palca. W odpowiedzi na to, światło pod gałęzią zaczyna mienić się intensywniej, zachęcając cię do przejścia przez otwór.~ */
  IF ~~ THEN REPLY #51452 /* ~Przejdź przez portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Zostaw zwisającą gałąź w spokoju.~ */ EXIT
END
