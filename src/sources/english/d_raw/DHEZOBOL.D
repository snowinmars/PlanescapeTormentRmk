// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHEZOBOL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHEZOBOL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50917 /* ~You see a slim man clad in flowing robes. His face is dark with anger, and he shouts at his subordinates as they move with brisk efficiency. "Hurry it up, scumbags! We only have so much time to make a sacrifice!" He doesn't appear to notice you.~ */
  IF ~~ THEN REPLY #50918 /* ~"What are you doing?"~ */ GOTO 1
  IF ~~ THEN REPLY #50919 /* ~"I'm here to stop you."~ */ GOTO 2
  IF ~~ THEN REPLY #50920 /* ~Leave quietly.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #50921 /* ~He looks back at you with irritation sketched across his features. "I'm capitalizing on the chaos, berk. Now's the best time to take slaves, while everyone's worried about putting the town back into order. If you'll excuse me, I've got business to attend to." He turns back to his men.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50922 /* ~"The disruption in town is caused by people trying to capitalize on this disaster. Leave off on it, and you might be able to help the town slide back - and then you can resume your trade."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #50923 /* ~"Too many people are adding to the chaos and evil done to each other. If you would have your men aid in the defense of the town, you might shift the balance again."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #50924 /* ~"It's precisely this sort of behavior that brought the town to the fix it's in now. Join me in combating this, and we can all get out of this place that much faster."~ */ GOTO 3
  IF ~~ THEN REPLY #50925 /* ~"I'm here to stop you."~ */ GOTO 2
  IF ~~ THEN REPLY #50926 /* ~Attack him.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Slaver_1","GLOBALGood",-1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 5.1
  SAY #50927 /* ~He sneers at you. "I'd like to see you stop me. Men! Leave off the slaves and kill this intruder!"~ */
  IF ~~ THEN REPLY #50928 /* ~Fight.~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 1.2
  SAY #50930 /* ~He calls out to his men. "Stop what you're doing!" He looks at you thoughtfully. "So you're saying we won't need a sacrifice to the gehreleths?"~ */
  IF ~~ THEN REPLY #50931 /* ~"No. This entire town will be a sacrifice unless you work with the other citizens."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(150000)
~ JOURNAL #50932 /* ~I convinced the slaver leader to lay down his slave trade and take arms against the gehreleths plaguing the town.~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #50933 /* ~He curses. "Just my luck. Had quite a haul, too. Okay, boys, set 'em free! We got us a town to save!" He gives you an unreadable look and leads his group away. "Thanks for the tip, stranger."~ */
  IF ~~ THEN REPLY #50934 /* ~"No problem. Good luck."~ */ DO ~SetGlobal("Slaver_Gone","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #50935 /* ~The slave leader appears to be running his operation smoothly, though he keeps watching for impending gehreleth attacks. "What do you want, berk?"~ */
  IF ~~ THEN REPLY #50936 /* ~"What are you doing?"~ */ GOTO 1
  IF ~~ THEN REPLY #50937 /* ~"I'm here to stop you."~ */ GOTO 2
  IF ~~ THEN REPLY #50938 /* ~Leave quietly.~ */ EXIT
END
