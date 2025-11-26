// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~You see a busy worker. She does not acknowledge your approach.~ */
  IF ~~ THEN REPLY #61251 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~"Sorry, cutter. I'm really busy. Don't bother me." She turns away from you.~ */
  IF ~~ THEN REPLY #61254 /* ~Leave.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~You see a busy worker. "I don't have time to talk to you, cutter. Go to the supervisor if you need something." She turns away.~ */
  IF ~~ THEN REPLY #61256 /* ~Leave.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~You see a busy worker. She frowns at your approach. "Pike it, berk. I don't have time for senseless chatter." She ignores you.~ */
  IF ~~ THEN REPLY #61258 /* ~Leave.~ */ EXIT
END
