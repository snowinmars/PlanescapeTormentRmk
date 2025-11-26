// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"So. You are the spider that lies in the center of it all."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"I have many questions that you could answer. Your goals in this matter have not been entirely clear."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"My heart is neither black nor do I fear for my life."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"Someone precious to me is here in your fortress. I shall not leave until we are rejoined and he has resolved this matter to a satisfactory conclusion."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"My heart is neither black nor do I fear for my life."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"My companions, my friends, are here in your fortress. I shall not leave until we are rejoined and the man we follow has resolved this matter to a satisfactory conclusion."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"As gracious as your offer is, I must refuse your offer to abandon my friends."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"As for the 'small' price he will pay at your hands, it is the equivalent of death to him. I have traveled with this man for some time, and there are many things I do not wish him to forget."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"That is *your* judgment."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"The fact remains that I do not wish him to forget me, nor all that he has struggled for to reach this place."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"He has suffered much, and I find my sympathies lie with him rather than the arrogant creature that postures before me and fights as a *coward* fights, preferring to kill from a distance where his opponent cannot reach him."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"You shall torment him no more."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
