// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURT~

IF ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2881 /* ~Burt's corpse twitches as you speak to it. "What... what do ye want?"~ */
  IF ~~ THEN REPLY #2882 /* ~"I wanted to ask you a few more questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20787 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1 3.1 4.0 5.0 6.1 7.0 8.0
  SAY #20788 /* ~"What... what did ye want to know... know?"~ */
  IF ~  Global("Know_Burt","GLOBAL",0)
~ THEN REPLY #20789 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_BLDead","GLOBAL",1)
SetGlobal("Know_Burt","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20790 /* ~"Tell me about yourself again."~ */ GOTO 2
  IF ~  Global("Know_BLG_Grouped","GLOBAL",1)
Global("Know_Burt","GLOBAL",1)
~ THEN REPLY #20791 /* ~"What happened to Gris?"~ */ GOTO 5
  IF ~~ THEN REPLY #20792 /* ~"How did you die?"~ */ GOTO 6
  IF ~~ THEN REPLY #20793 /* ~"Tell me about the catacombs."~ */ GOTO 7
  IF ~~ THEN REPLY #20794 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #20795 /* ~"I... I was Burt. Me an' Lowden, me best mate, we's dead now."~ */
  IF ~~ THEN REPLY #20796 /* ~"Where's Lowden now?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20797 /* ~"Answer some other questions for me..."~ */ GOTO 1
  IF ~~ THEN REPLY #20798 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.0
  SAY #20799 /* ~"Caught in some horrible trap crypt. We bolted from Gris and the *thing* that got him. Lowden headed fer a... a crypt we knew was bad, but... but he was so scairt that he didn't care. I heard 'im die." His voice sounds disappointed for a moment. "He had all the swag from this run, too... and it were a good run..."~ */
  IF ~~ THEN REPLY #20800 /* ~"Trap crypt?"~ */ GOTO 4
  IF ~~ THEN REPLY #20801 /* ~"I'm sure. I had some more questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20802 /* ~"Really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20803 /* ~"Aye. Spikes, blades, blood, grates in the ground. If Lowden's still in one piece, he'll be there. Y'go lookin' fer him, watch yer... yer step..."~ */
  IF ~~ THEN REPLY #20804 /* ~"I'm sure. I had some more questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20805 /* ~"I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #20806 /* ~"Sommat horrible... opened a crypt, and *she* were there. Lowden 'n me, we shoved Gris inside and bolted. Heard him... him screamin'."~ */
  IF ~~ THEN REPLY #20807 /* ~"I... see. I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20808 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3
  SAY #20809 /* ~"I... I'm dead? Must be... fled the crypt's queen and ran through the 'combs. Lowden, he went into a bad place... me... me, I kept runnin'. Ran right into the wall... bled for a while... woke to rats chewin' me... they ate me to death..."~ */
  IF ~~ THEN REPLY #20810 /* ~"Where's Lowden?"~ */ DO ~SetGlobal("Know_BLG_Grouped","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #20811 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #20812 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.4
  SAY #20813 /* ~"Used to... used to be... stomping grounds... wealth grounds... was going to make it out of here on bones alone... too dangerous... Gris? Gris?" The corpse falls silent.~ */
  IF ~~ THEN REPLY #20814 /* ~"Answer some questions for me."~ */ GOTO 1
  IF ~~ THEN REPLY #20815 /* ~Leave it.~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",1)
~ THEN BEGIN 8 // from:
  SAY #20816 /* ~The corpse is fairly fresh - within the last couple of weeks or so, anyway - and large parts of it have been gnawed away by rat teeth. The forehead skin on the corpse looks like someone really brained this poor sod. At your questioning, it stirs. "Wh... who disturbs me?"~ */
  IF ~~ THEN REPLY #20817 /* ~"I had some questions for you, corpse..."~ */ GOTO 1
  IF ~~ THEN REPLY #20818 /* ~"No one. Farewell."~ */ EXIT
END

IF ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #20819 /* ~The corpse is fairly fresh - within the last couple of weeks or so, anyway - and large parts of it have been gnawed away by rat teeth. The forehead skin on the corpse looks like someone really brained this poor sod. You nudge it with your toe, and it flops around bonelessly.~ */
  IF ~~ THEN REPLY #20820 /* ~"Nothing useful here..."~ */ EXIT
END
