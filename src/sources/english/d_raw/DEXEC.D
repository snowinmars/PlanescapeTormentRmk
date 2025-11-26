// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEXEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DEXEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57394 /* ~This hulking man appears wholly apathetic to the situation around him. He yawns as you approach, picking at his dirt - or blood - caked fingernails.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57395 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57396 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57397 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ GOTO 1
  IF ~~ THEN REPLY #57398 /* ~"You can't execute that man - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ GOTO 1
  IF ~~ THEN REPLY #57399 /* ~"Stop. I won't let you execute this man."~ */ GOTO 2
  IF ~~ THEN REPLY #57400 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #57401 /* ~He cuts you off before you've even really begun. "Talk to the judge, cutter. Talk to the judge." He then goes back to examining his filthy nails.~ */
  IF ~~ THEN REPLY #57402 /* ~"No, I'm talking to *you.* You won't execute this man."~ */ GOTO 2
  IF ~~ THEN REPLY #57403 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.0
  SAY #57404 /* ~He looks up from his nails for a moment. "If the judge says to kill this man, I'm killin' this man... whether I got to go through you to do it is up to *you,* cutter. I'd go talk to the judge."~ */
  IF ~~ THEN REPLY #57405 /* ~Leave.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #57406 /* ~The executioner, hands spattered with fresh gore, gives you a bored glance. "Things're rollin' right along now, cutter. Nothin' you say now's gonna make much of a difference. Just move on."~ */
  IF ~~ THEN REPLY #57407 /* ~Leave.~ */ EXIT
END
