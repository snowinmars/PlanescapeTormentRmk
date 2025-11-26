// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBODY1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBODY1~

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #20615 /* ~The corpse lies motionless. No amount of prodding or poking induces it to say or do anything.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20616 /* ~"I guess it's not a zombie, then..."~ */ EXTERN ~DANNAH~ 111
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #54873 /* ~"I guess it's not a zombie, then..."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #20617 /* ~The corpse jerks visibly, as if electric current ran through it, and a gassy sigh escapes its mouth.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20618 /* ~"Greetings."~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20619 /* ~"Who are you?"~ */ EXTERN ~DANNAH~ 112
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #20620 /* ~"I need to ask you some questions."~ */ EXTERN ~DANNAH~ 112
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20621 /* ~"Greetings."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20631 /* ~"Who are you?"~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #20632 /* ~"I need to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #20633 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 1.4 1.5
  SAY #20622 /* ~"Nnnngh! Aghhhh..." The corpse babbles with its liquefied tongue, and you cannot understand a single word.~ */
  IF ~~ THEN REPLY #20624 /* ~"Forget this, then..."~ */ EXIT
END
