// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48991 /* ~You see a plump woman going about her chores. She doesn't notice you entering the room.~ */
  IF ~~ THEN REPLY #48993 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #48994 /* ~Leave the woman alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48995 /* ~"You again... I see your manners haven't improved."~ */
  IF ~~ THEN REPLY #48996 /* ~"Hmm... this isn't where I wanted to go."~ */ GOTO 4
  IF ~~ THEN REPLY #48997 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48998 /* ~"What are you doing in my house? Don't you have any manners? You don't just go around entering people's houses."~ */
  IF ~~ THEN REPLY #48999 /* ~"I'm sorry. I didn't know anyone lived here."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49000 /* ~"Well now you know. Please leave now, and close the door on your way out. I have many chores I still need to finish and I don't need any more interruptions."~ */
  IF ~~ THEN REPLY #49001 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49002 /* ~"Go on and find where you need to go, then, and leave me alone."~ */
  IF ~~ THEN REPLY #49003 /* ~"Farewell."~ */ EXIT
END
