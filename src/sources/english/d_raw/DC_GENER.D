// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~This person turns to you, scowling as you interrupt them. "Do I *know* you? That's right... I didn't think so. Now leave me alone - farewell."~ */
  IF ~~ THEN REPLY #67981 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~This person stops and faces you as you try and get their attention. "No disrespect, cutter, but I don't talk to people I don't know - and I don't want to get to know you, either. Find someone else to answer your questions, all right? Farewell."~ */
  IF ~~ THEN REPLY #67983 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~They smirk, cutting you off before you can greet them. "I don't want to hear it - not a word. Go find some other sod to interrogate, will you?"~ */
  IF ~~ THEN REPLY #67985 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~They smile nervously at you, holding their hands up protectively. "I try and stay away from trouble, blood, and from the looks of you - you're it. Just leave me alone... please."~ */
  IF ~~ THEN REPLY #67987 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~This person has nothing more to say to you.~ */
  IF ~~ THEN REPLY #67989 /* ~Leave.~ */ EXIT
END
