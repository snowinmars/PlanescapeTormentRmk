// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~This person is literally twitching with anxious excitement; their eyes burn with malicious anticipation. They turn and smirk as you approach. "What?"~ */
  IF ~~ THEN REPLY #53203 /* ~"What's going on here?"~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~"Talk to Jujog if you're interested in getting in on a bit of the action. Now pike off!"~ */
  IF ~~ THEN REPLY #53206 /* ~"Wait... who's Jujog?"~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~They shoot you an annoyed glance and gesture vaguely. "The guardsman there, in all the armor."~ */
  IF ~~ THEN REPLY #53209 /* ~Leave.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~This person is panicked, shouting and for the most part incapable of rational thought. "Jujog's dead! What're we going to do? We've got to get out of here!"~ */
  IF ~~ THEN REPLY #53211 /* ~Leave.~ */ EXIT
END
