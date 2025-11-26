// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~You see a man in old and tattered clothes. As you approach him, he stops in his tracks and stares at you.~ */
  IF ~~ THEN REPLY #1560 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~"Have a *problem,* berk...? Or are ye *lookin'* fer one?" Spits at your feet. "Get on wit' ye 'fore ye add to yer scars."~ */
  IF ~~ THEN REPLY #1562 /* ~"Calm down. I just had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Scoffs. "I'm sure ye do, and I have no answers for the likes of you. Piss off!"~ */
  IF ~~ THEN REPLY #1565 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~"Farewell, then."~ */ EXIT
END
