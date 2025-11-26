// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~Widzisz przestraszonego mieszkańca Klątwy. "Dziękuję ci za pomoc... Nie wiem, jakbym sobie bez tego poradził... Pewnie by mnie zabili..." Przez pewien czas mamrocze niezrozumiałe podziękowania, po czym mówi, "Powinienem pomóc. To miasto nie pozwala mi być samolubnym. Dziękuje, po dwakroć. Żegnaj."~ */
  IF ~~ THEN REPLY #53238 /* ~"Nie ma za co. Żegnaj."~ */ DO ~EscapeArea()
~ EXIT
END
