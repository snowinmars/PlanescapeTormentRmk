// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUDGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUDGE~

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #54119 /* ~This sour-faced little man raises an eyebrow as you approach. He speaks in the tone of an overfed, arrogant nobleman. "Mind you, sirrah, that you're interrupting an official process, and watch your words carefully: I am a powerful magistrate here, and would hate for you to share this man's..." He indicates the official about to be executed. "...rather *sorry* fate."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54120 /* ~"If you execute him, it'll add to the chaos that threw this town into Carceri in the first place. Put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #54121 /* ~"If you execute him, it'll add to the chaos that threw this town into Carceri in the first place. Put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #54122 /* ~"If you execute him, it'll add to the chaos that threw this town into Carceri in the first place. Put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #54123 /* ~"You can't execute that man. This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #54124 /* ~"You can't execute that man. This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ GOTO 4
  IF ~~ THEN REPLY #54125 /* ~"An 'official process'? Doubtful. You won't execute this man."~ */ GOTO 1
  IF ~~ THEN REPLY #54126 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.5 4.3 6.5
  SAY #54127 /* ~"Oh?" He drops one bushy eyebrow while raising the other. "So you would place yourself in the righteous path of justice? And just *how* do you intend to stop the execution, sirrah?"~ */
  IF ~  NearbyDialog("Dvhail")
~ THEN EXTERN ~DVHAIL~ 155
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #54128 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57330 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57333 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57336 /* ~"You can't execute that man - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  !NearbyDialog("Dvhail")
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57339 /* ~"You can't execute that man - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ GOTO 4
  IF ~~ THEN REPLY #57341 /* ~"By killing the executioner... and you, if need be."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Judge_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #57343 /* ~"Forget it; I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57345 /* ~All color bleeds from the judge's face. "P-p-perhaps w-we were a b-bit hasty in our judgements, Mercykiller. Guards! Free this man!" He smiles meekly at Vhailor. "Thank you for your most timely aid, sir."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 156
END

IF ~~ THEN BEGIN 3 // from: 1.6
  SAY #57347 /* ~Both the judge's eyebrows shoot up. "Wha-? You *dare?!* Guards! Capture this man - or kill him, if need be!"~ */
  IF ~~ THEN REPLY #57348 /* ~Attack the judge.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57350 /* ~Attack the guards.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"CrstGrd")
~ EXIT
  IF ~~ THEN REPLY #57352 /* ~Attack the executioner.~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FIFTEEN_AI_SECONDS,FALSE)
ForceAttack(Protagonist,"Execute")
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4 1.5 6.4
  SAY #57353 /* ~"*Wrong?* You quickly forget that I am a magistrate, sirrah. I, myself, decide what is right and wrong in this town!"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57354 /* ~"But if you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57357 /* ~"But if you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57359 /* ~"But if you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~~ THEN REPLY #57361 /* ~"Be that as it may, you won't execute this man."~ */ GOTO 1
  IF ~~ THEN REPLY #57363 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.3 1.1 1.2 1.3 1.4 4.0 4.1 4.2 6.0 6.1 6.2 6.3
  SAY #57364 /* ~The judge furrows his thick brows, forming a bushy, white 'V' over his eyes. He looks to you, then the official, then to you again. "Both clever and wise are your swaying words, sir... and I thank you for your timely aid. It is well appreciated, by this town as well as the accused. There shall be no more hasty executions. Guards! Release the man."~ */
  IF ~~ THEN REPLY #57365 /* ~"Thanks. Farewell."~ */ DO ~AddexperienceParty(225000)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #57378 /* ~"Again? And just what is it now, sirrah?"~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #57379 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #57380 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #57381 /* ~"That man's just a scapegoat. If you execute him, it'll only add to the chaos that threw this town into Carceri in the first place. We have to put an end to this madness so we can get Curst back where it belongs... before we're *all* killed."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #57382 /* ~"You can't execute that man - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALGood_Judge_1","GLOBALGood",1)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #57383 /* ~"You can't execute that man - he's just a scapegoat. It's *wrong.* This sort of thing's why Curst slid into Carceri... and it's what we need to stop in order to get the gate town back on the Outlands."~ */ GOTO 4
  IF ~~ THEN REPLY #57384 /* ~"I can't let this happen... you won't execute this man."~ */ GOTO 1
  IF ~~ THEN REPLY #57385 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 7 // from:
  SAY #57386 /* ~This sour-faced little man raises an eyebrow as you approach. "You can do little here, sirrah, save annoy me... I would suggest that you leave."~ */
  IF ~~ THEN REPLY #57387 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #57389 /* ~"Again?" The judge gives an exasperated sigh. "You can do little here, sirrah, save annoy me... I would suggest that you leave."~ */
  IF ~~ THEN REPLY #57390 /* ~Leave.~ */ EXIT
END
