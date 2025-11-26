// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~Unlike other Collectors you've seen, the robes on this one seem to be of fine quality. "Ah, another deader has come to visit us. Please excuse the *mess;* my colleagues haven't had the time to tidy up."~ */
  IF ~~ THEN REPLY #45718 /* ~"There's no way out..."~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Vlask chuckles softly. "You again! My friends and I very rarely get repeat business. I'll get right to the point: the price is now two hundred coppers for the key."~ */
  IF ~~ THEN REPLY #45720 /* ~"I came back to kill you."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~"Take the money."~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~"I don't have enough."~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~"Why, sure there is. The door is right over there. But you need one of these to activate the portal." He holds up what appears to be a small glass bead. "Come; let us talk price."~ */
  IF ~~ THEN REPLY #45725 /* ~"I think I'll just kill you instead."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~"I'm listening..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~"Simple. You pay my comrades and me one hundred coppers. I give you the key to the portal."~ */
  IF ~~ THEN REPLY #45728 /* ~"What if I don't want to pay?"~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~"Here's the money. Give me the key."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~"I don't have enough."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~"Then my friends and I will just have to sell your body to the Dustmen. Either way, we get paid."~ */
  IF ~~ THEN REPLY #45735 /* ~"I think I'll kill you instead."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~"Here's the money. Give me the key."~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~"I don't have enough."~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~"My comrades and myself appreciate doing business with you. Simply crushing the glass bead will activate the portal." ~ */
  IF ~~ THEN REPLY #45739 /* ~"Farewell."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~"Now that's a shame. Boys, prepare this one for the Dustmen."~ */
  IF ~~ THEN REPLY #45741 /* ~"Prepare to die..."~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
