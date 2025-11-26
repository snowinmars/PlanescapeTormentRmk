// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~Widzisz krzepkiego tokolę, byłego łowcę niewolników. Jest pokryty krwią potworów z Tartaru. "Zabijam potwory, ha! Nieźle sobie radzę. Zamiast łapania niewolników, zabijam potwory. Lubię to, ha!"~ */
  IF ~~ THEN REPLY #50970 /* ~"Trzymaj tak dalej."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~"Ha! Lubię zabijać, ha!"~ */
  IF ~~ THEN REPLY #50972 /* ~"Trzymaj tak dalej... Jeszcze tylko trochę..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~Widzisz krzepkiego tokolę, łowcę niewolników. Spogląda na ciebie martwymi, pełnymi nienawiści oczami. Cokolwiek doń mówisz, warczy głucho, ale poza tym dźwiękiem daremnie oczekujesz jakiejkolwiek odpowiedzi.~ */
  IF ~~ THEN REPLY #50974 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~Tokola po prostu warczy na ciebie.~ */
  IF ~~ THEN REPLY #50976 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~Widzisz krzepkiego tokolę, łowcę niewolników. Spogląda na ciebie martwymi, pełnymi nienawiści oczami. Cokolwiek doń mówisz, warczy głucho, ale poza tym dźwiękiem daremnie oczekujesz jakiejkolwiek odpowiedzi.~ */
  IF ~~ THEN REPLY #50978 /* ~"Zatem żegnaj."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~Tokola po prostu warczy na ciebie.~ */
  IF ~~ THEN REPLY #50980 /* ~"Zatem żegnaj."~ */ EXIT
END
