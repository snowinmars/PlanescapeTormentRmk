// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSLAVE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSLAVE1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36001 /* ~You see a young woman. She has a scowl on her face and looks upset. She sneers at you as you approach. "An' what might ye be wantin'?"~ */
  IF ~~ THEN REPLY #36002 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36003 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36004 /* ~She frowns at you and puts her hands on her hips. "Pike it, berk! Take a long walk down a short road."~ */
  IF ~~ THEN REPLY #36005 /* ~"What does that mean?"~ */ GOTO 2
  IF ~~ THEN REPLY #36006 /* ~"I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #36007 /* ~"You have an attitude problem."~ */ GOTO 4
  IF ~~ THEN REPLY #36008 /* ~"Fine, I think I'll be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36009 /* ~She bares her teeth at you and makes a rude gesture. "It means get lost, bubber! I gots nothin ta say to ye." She looks at you defiantly.~ */
  IF ~~ THEN REPLY #36010 /* ~"I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #36011 /* ~"Fine, I think I'll be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #36012 /* ~She gives you an evil smile. "An' I've got the answer for ye... Take a short stick an' pike it!" She gives you another rude gesture.~ */
  IF ~~ THEN REPLY #36013 /* ~"You have an attitude problem."~ */ GOTO 4
  IF ~~ THEN REPLY #36014 /* ~"Fine, I think I'll be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.0
  SAY #36015 /* ~She laughs. "Aye, an' I haven't even warmed up to ye yet. Now, stick it where the light o' day ne'er shines!"~ */
  IF ~~ THEN REPLY #36016 /* ~"Fine, I think I'll be going. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #36017 /* ~You see a young woman. She has a scowl on her face and looks upset. She sneers at you as you approach. "Now what ye be wantin'?"~ */
  IF ~~ THEN REPLY #36018 /* ~"I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #36019 /* ~"Nothing, farewell."~ */ EXIT
END
