// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~"What...? Who...?"~ */
  IF ~~ THEN REPLY #47885 /* ~"Greetings."~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~"You again?!"~ */
  IF ~~ THEN REPLY #47888 /* ~"Greetings."~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~"You're back. Did you manage to find one?"~ */
  IF ~~ THEN REPLY #47891 /* ~"No. I'm still looking."~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~"What am I supposed to be looking for again?"~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~"Is this what you're looking for?"~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~"Hello again. Pardon me for being abrupt, but now that I have that gem I need to prepare myself for the casting."~ */
  IF ~~ THEN REPLY #47895 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~"I really don't have time to talk with you. You see, I'm trying to figure out how I'm going to complete my spell without the key component."~ */
  IF ~~ THEN REPLY #47897 /* ~"Maybe I can help."~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~"I'll be leaving then. Farewell." ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Jarym pauses for a second. "I guess it couldn't hurt. I am in need of a ruby to complete my spell. It must be of exceptional quality; not like the junk they sell at the marketplace. If you should find one, bring it back to me and I shall make it worth your while."~ */
  IF ~~ THEN REPLY #47900 /* ~"Farewell."~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~A spellcaster named Jarym is searching for a ruby to complete one of his spells. He has promised to make it worth my while if I should bring one to his house in Ragpicker's Square.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~"Don't give up. There has to be ruby around here somewhere."~ */
  IF ~~ THEN REPLY #47902 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~"You're supposed to be looking for a ruby, remember? If you find one bring it back here."~ */
  IF ~~ THEN REPLY #47904 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~"That's perfect! Where did you... never mind, here." Jarym takes the gem from you, handing you a good sum of coins. "Now if you don't mind, I'd like to work on my spell."~ */
  IF ~~ THEN REPLY #47906 /* ~"Farewell."~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Jarym seemed pleased with the ruby I brought him. I wonder if he would feel the same way if I told him that that was the same gem from Moridor's Box?~ */ EXIT
END
