// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAUK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAUK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49900 /* ~You see a young man dressed in plain, but well-kept clothes. He pauses in his pacing as you approach.~ */
  IF ~~ THEN REPLY #49901 /* ~"Greetings..."~ */ GOTO 4
  IF ~~ THEN REPLY #49902 /* ~"Never mind. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 2 3 7 even though they appear after this state */
~  Global("Rings3","Global",1)
~ THEN BEGIN 1 // from:
  SAY #49903 /* ~"Did you bring? Yes?"~ */
  IF ~  PartyHasItem("SilRing")
PartyHasItem("BroRing")
PartyHasItem("GolRing")
~ THEN REPLY #49904 /* ~"I got all the rings. Here."~ */ DO ~TakePartyItemNum("SilRing",1)
TakePartyItemNum("BroRing",1)
TakePartyItemNum("GolRing",1)
~ GOTO 6
  IF ~~ THEN REPLY #49905 /* ~"I'll be back when I have them all. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 3 7 even though they appear after this state */
~  Global("Rings3","Global",2)
~ THEN BEGIN 2 // from:
  SAY #49906 /* ~"You friend. Help Rauk. Good."~ */
  IF ~~ THEN REPLY #49907 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 7 even though they appear after this state */
~  Global("WIdiots","Global",1)
~ THEN BEGIN 3 // from:
  SAY #49908 /* ~"Rauk lose friends. But Rauk make new friend. Call him Green Thing."~ */
  IF ~~ THEN REPLY #49909 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #49910 /* ~"Rauk in trouble, big. Help you do?"~ */
  IF ~~ THEN REPLY #49911 /* ~"What's wrong?"~ */ GOTO 5
  IF ~~ THEN REPLY #49912 /* ~"I've no time for this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49913 /* ~"Rauk forget rings in tent. Friends need to magic with. No rings, be mad at Rauk. One ring brown, like jink. Other shiny like mirror. Last is pretty and yellow. Bring for Rauk?"~ */
  IF ~~ THEN REPLY #49914 /* ~"I'll bring them back for you, Rauk."~ */ DO ~SetGlobal("Rings3","Global",1)
~ JOURNAL #49916 /* ~Rauk has asked me to retrieve three rings from his tent. From his description, the first is made of gold, the second is made of silver and the third is made of bronze. Now I just need to find Rauk's tent. Rauk seemed to have a simple mind, so it's probably close by.~ */ EXIT
  IF ~~ THEN REPLY #49915 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #49917 /* ~"You new friend of Rauk now. Rauk take rings now. Rauk thanks new friends."~ */
  IF ~~ THEN REPLY #49918 /* ~"Farewell, Rauk."~ */ DO ~SetGlobal("Rings3","Global",2)
AddexperienceParty(500)
StartCutSceneMode()
StartCutSceneEx("3012cut1",FALSE)
~ JOURNAL #49919 /* ~I returned with the three rings and handed them over to Rauk. A simple task for a simple person.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Apprent_DEAD_KAPUTZ","GLOBAL",0)
!Global("Rings3","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #66367 /* ~"You kill friend of Rauk. Rauk hurt you bad now."~ */
  IF ~~ THEN REPLY #66368 /* ~Attack Rauk.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
