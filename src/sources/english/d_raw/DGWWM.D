// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~You see a busy worker. He does not acknowledge your approach.~ */
  IF ~~ THEN REPLY #61242 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~"I'm sorry, I'm really busy. Please don't disturb me." He turns away from you.~ */
  IF ~~ THEN REPLY #61245 /* ~Leave.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~You see a busy worker. "I don't have time to talk. Please go to the supervisor if you need assistance." He turns away.~ */
  IF ~~ THEN REPLY #61247 /* ~Leave.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~You see a busy worker. He frowns at your approach. "Pike it, berk. I don't have time for chatter." He ignores you.~ */
  IF ~~ THEN REPLY #61249 /* ~Leave.~ */ EXIT
END
