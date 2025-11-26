// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~Widzisz ponurą, bladą kobietę odzianą w ciemne szaty. Wpatruje się w milczeniu w swojego drinka.~ */
  IF ~~ THEN REPLY #2545 /* ~"Witaj..."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~Widzisz ponurą, bladą kobietę odzianą w ciemne szaty. Wpatruje się w milczeniu w swojego drinka.~ */
  IF ~~ THEN REPLY #2547 /* ~"Witaj..."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Zostaw ją w spokoju.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~Grabarz podnosi wzrok. "Tak?"~ */
  IF ~~ THEN REPLY #2550 /* ~"Mogę zadać ci parę pytań?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"Mniejsza z tym. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"Nie tym razem." Grabarz milknie i wraca do swego drinka.~ */
  IF ~~ THEN REPLY #2553 /* ~"A zatem żegnaj."~ */ EXIT
END
