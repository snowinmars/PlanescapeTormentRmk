// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2554 /* ~Widzisz posępnego, ubranego w ciemne szaty mężczyznę. Wpatruje się w milczeniu w swojego drinka.~ */
  IF ~~ THEN REPLY #2556 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2557 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2555 /* ~Widzisz ponurego, bladego mężczyznę odzianego w ciemne szaty. Wpatruje się w milczeniu w swojego drinka.~ */
  IF ~~ THEN REPLY #2558 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #2559 /* ~Zostaw go w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2560 /* ~Grabarz podnosi wzrok. "Tak?"~ */
  IF ~~ THEN REPLY #2561 /* ~"Mogę zadać ci parę pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #2562 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2563 /* ~"Nie tym razem." Grabarz milknie i wraca do swego drinka.~ */
  IF ~~ THEN REPLY #2564 /* ~"A zatem żegnaj."~ */ EXIT
END
