// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~Wygląda na to, że ją wystraszyłeś. Nagle przestaje szperać w namiocie i nerwowo na ciebie spogląda.~ */
  IF ~~ THEN REPLY #49892 /* ~"Witaj..."~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"Nic nie robiłam! Przysięgam!"~ */
  IF ~~ THEN REPLY #49895 /* ~"Powiesz mi czego nie robiłaś?"~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"To co robisz, to twoja sprawa. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~Patrzy, jak gdyby miała coś powiedzieć i nagle rzuca się do wyjścia.~ */
  IF ~~ THEN REPLY #49898 /* ~"Stój..."~ */ DO ~EscapeArea()
~ EXIT
END
