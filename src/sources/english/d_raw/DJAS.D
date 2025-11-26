// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~The young woman - hair mussed up, clothes disheveled - is trying to smile at you through choking sobs. "Thank you! I thank you *so!* My name is Jasilya. Listen... I must go, now, stranger, but again: thank you!"~ */
  IF ~~ THEN REPLY #57141 /* ~"No problem."~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~This woman can only stare at you. "You've saved me... thank you so *much!* I would be dead or worse without you..." She opens her arms and moves to embrace you.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Pull her close and kiss her.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Pull her close and kiss her.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Allow her to put her arms around you.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Back away.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~She squeezes you tightly; her cheek, wet with tears, presses against your chest. After a time, she steps back and looks up at you, smiling. "I must leave... but let me say 'thank you.' I shall not forget your kindness. Farewell, traveler."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~"Farewell."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~She flushes with embarrassment, looking down to her feet. "Oh... I had not meant to... well..." She looks up at you again, smiling. "Farewell, stranger, and I *do* thank you so much! I shall not forget your kindness."~ */
  IF ~~ THEN REPLY #57150 /* ~"Sure. Farewell."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Jasilya smiles as you approach, ceasing her cleaning. "Well met once more, my grim savior! Again, I thank you. What can I do for you?"~ */
  IF ~~ THEN REPLY #57152 /* ~"I'm looking for a place to spend the night."~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~"Nothing right now. Farewell, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~She smiles at you. "Oh... you'll have to speak with my father, then."~ */
  IF ~~ THEN REPLY #57156 /* ~"Thanks. Farewell, Jasilya."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~As she makes to hug you, you wrap your arms around her and place your lips upon hers.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~She flinches slightly, and gently works herself out of your grasp. She gives you a slightly distraught, nervous smile. "Uh... farewell, stranger, and thank you. I... I shall not forget your kindness."~ */
  IF ~~ THEN REPLY #57159 /* ~"Sure. Farewell."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~As she makes to hug you, you wrap your arms around her and place your lips upon hers. She flinches slightly, and gently works herself out of your grasp. She gives you a slightly distraught, nervous smile. "Uh... farewell, stranger, and thank you. I... I shall not forget your kindness."~ */
  IF ~~ THEN REPLY #57161 /* ~"Sure. Farewell."~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~This woman is panting and sweating. "Please... please... save me from these men..."~ */
  IF ~~ THEN REPLY #67819 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~"Help me! Please kill them before they enslave me!"~ */
  IF ~~ THEN REPLY #68098 /* ~"I'll do what I can..."~ */ EXIT
END
