// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~Ta starucha, o twarzy pomarszczonej jak suszona śliwka, wykrzykuje do otaczającego ją tłumu. Kiedy nadchodzisz, uśmiecha się, trzymając garść czegoś co wygląda jak zdechłe szczury i ptaki. "Nie jesteś głodny, panie?"~ */
  IF ~~ THEN REPLY #9369 /* ~"Dzisiaj nie, dziękuję."~ */ EXIT
END
