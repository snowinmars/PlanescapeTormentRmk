// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEGUARDS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEGUARDS~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57421 /* ~This guardsmen turns as you approach, but makes no sound. Through the slits on his helm you can spy a pair of dull, apathetic eyes.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57422 /* ~"That man's just a scapegoat. If he's executed, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57423 /* ~"That man's just a scapegoat. If he's executed, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57424 /* ~"That man's just a scapegoat. If he's executed, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~~ THEN REPLY #57425 /* ~"You can't let that man be executed - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ GOTO 1
  IF ~~ THEN REPLY #57426 /* ~"You can't let that man be executed."~ */ GOTO 1
  IF ~~ THEN REPLY #57427 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 0.4
  SAY #57428 /* ~The guard merely shrugs.~ */
  IF ~~ THEN REPLY #57429 /* ~"Don't you care? Can't you see what's going on here?"~ */ GOTO 2
  IF ~~ THEN REPLY #57430 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57431 /* ~The guard offers only a lazy sniff as a reply.~ */
  IF ~~ THEN REPLY #57432 /* ~"Fine... I'll find someone else."~ */ EXIT
  IF ~~ THEN REPLY #57433 /* ~Leave.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57434 /* ~This apathetic guardsman seems determined to ignore you entirely.~ */
  IF ~~ THEN REPLY #57435 /* ~Leave.~ */ EXIT
END
