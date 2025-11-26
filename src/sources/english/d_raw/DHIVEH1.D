// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~You see a man in old and tattered clothes. As you approach him, he makes a detour to avoid you and keeps walking.~ */
  IF ~~ THEN REPLY #1549 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~"Hey! Hold for a moment!"~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~The man ignores you, begins to walk faster.~ */
  IF ~~ THEN REPLY #1551 /* ~"Sir?"~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~"Hey! Hold for a moment!"~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~He turns, glancing briefly to the right and left of you as if looking to see if you have any friends with you. He draws a dagger. "Ye'd best leave me be, or you'll be wearing this steel 'tween yer ribs!"~ */
  IF ~~ THEN REPLY #1554 /* ~"Calm down. I just had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~He scoffs. "I'm sure ye do, and I have no answers for the likes of you. Piss off!"~ */
  IF ~~ THEN REPLY #1558 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~"Farewell, then."~ */ EXIT
END
