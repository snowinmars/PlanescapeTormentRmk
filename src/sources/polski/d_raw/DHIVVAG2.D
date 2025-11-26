// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~Widzisz wątłego mężczyznę; kuli się w rogu.~ */
  IF ~~ THEN REPLY #48813 /* ~"Witaj."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Zostaw go w spokoju.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"Nie chcesz mi zrobić krzywdy, prawda? Proszę, zostaw mnie w spokoju."~ */
  IF ~~ THEN REPLY #48970 /* ~"O czym ty mówisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"Nie rób mi krzywdy. Nic takiego nie robię."~ */
  IF ~~ THEN REPLY #48974 /* ~"O czym ty mówisz?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"Proszę... proszę, nie rób mi krzywdy."~ */
  IF ~~ THEN REPLY #48978 /* ~"Żegnaj."~ */ EXIT
END
