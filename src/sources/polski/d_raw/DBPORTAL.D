// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~Pośród skał znajduje się szczelina. Wygląda na to, że będziesz w stanie się przez nią prześlizgnąć - z ledwością - ale zdaje się ona prowadzić donikąd. Zauważasz, że ziemia wokół pokryta jest odłamkami obsydianu, najprawdopodobniej pozostałościami po okazjonalnych kulach ognistych, jakie przecinają powietrze, rozbijając się o potężne kamienie w tej dolinie.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~Podnieś odłamek obsydianu, włóż go do ust i ugryź tak, aby rozciął ci język...~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~Gdy ostry kawałek wulkanicznego szkła wbija ci się w język, czujesz w ustach dziwne dreszcze. Obszar wokół szczeliny rozbłyska i nagle pojawia się tu portal...~ */
  IF ~~ THEN REPLY #52780 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~Pośród skał znajduje się szczelina. Wygląda na to, że będziesz w stanie się przez nią prześlizgnąć - z ledwością - ale zdaje się ona prowadzić donikąd. Zauważasz, że ziemia wokół pokryta jest odłamkami obsydianu, najprawdopodobniej pozostałościami po okazjonalnych kulach ognistych, jakie przecinają powietrze, rozbijając się o potężne kamienie w tej dolinie.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~Podnieś odłamek obsydianu, włóż go do ust i ugryź tak, aby rozciął ci język...~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~Gdy chcesz użyć portalu, nagle zdajesz sobie sprawę, że wciąż nie masz pojęcia, gdzie może znajdować się portal do Fortecy Żalu, ani jaki jest do niego klucz. Dopóki nie wydostaniesz tej informacji ze Słupa Czaszek nie powinieneś opuszczać Baator.~ */
  IF ~~ THEN REPLY #68122 /* ~Odejdź.~ */ EXIT
END
