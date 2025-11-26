// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~This person seems annoyed that you're distracting them from the sentencing and execution that's about to take place. "Aye?"~ */
  IF ~~ THEN REPLY #57408 /* ~"What's going on here?"~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~"A great, nasty, bloody execution, if we have it *our* way." They grin and waggle their eyebrows.~ */
  IF ~~ THEN REPLY #57411 /* ~"What's the accused done?"~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~They shrug. "Who cares? Guilty, guilty, guilty, right? That's the only way we're going to see any blood spilt!" They rub their hands together with anticipation.~ */
  IF ~~ THEN REPLY #57414 /* ~"You're sentencing a man to death for *fun?*"~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~"Right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~They roll their eyes. "I don't sentence *anyone,* berk - that's the judge's task. You've a problem with it, you speak to him. Now leave me be."~ */
  IF ~~ THEN REPLY #57417 /* ~Leave.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~This person gives you only a moment's bothered glance. "Just leave me alone, will you? I won't answer your questions, so just go away."~ */
  IF ~~ THEN REPLY #57419 /* ~Leave.~ */ EXIT
END
