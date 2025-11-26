// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNESTOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNESTOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30119 /* ~You see an aging man in soiled and tattered clothes frantically pacing in the corner. His shock of filthy, white hair sticks out in every direction and his face, encrusted with dirt and streaks of dried blood, is covered with gray stubble. Every few seconds, he stops pacing and flails about suddenly, muttering and cursing as if assaulted by some unseen foe. He does not seem to notice your approach.~ */
  IF ~~ THEN REPLY #30133 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #30134 /* ~Leave the man alone.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #30120 /* ~The old man stops his frantic pacing and glances at you nervously. "Fork? Fork? Fork? Can't go home without my fork."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30135 /* ~"Look... Arlo asked me to get rid of you, so you're going to have to leave."~ */ GOTO 5
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30136 /* ~"Your... fork?"~ */ GOTO 6
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30137 /* ~"Is this the fork you speak of?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30138 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #30121 /* ~At the sound of your voice, the old loon whirls about to face you, his wide, staring eyes bulging in their sockets. He regards you for a brief moment, then returns to his raving. "No! No! Nooooooooo! It's not you... hoo hoo! But soon... yes, soon."~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30139 /* ~"Are you the one they call Nestor?"~ */ GOTO 3
  IF ~~ THEN REPLY #30140 /* ~"Uh... who are you talking to?"~ */ GOTO 3
  IF ~~ THEN REPLY #30141 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #30122 /* ~The old man seems oblivious to your presence. "Hoo hoo hoo! You'll come. Yes... you'll come. And ol' Nestor'll be waiting!"~ */
  IF ~~ THEN REPLY #30142 /* ~"Are you all right?"~ */ GOTO 5
  IF ~~ THEN REPLY #30143 /* ~"Waiting? Who are you waiting for?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30144 /* ~"Look... Arlo asked me to get rid of you, so you're going to have to leave."~ */ GOTO 5
  IF ~~ THEN REPLY #30145 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #30123 /* ~"Waiting, yes..." He suddenly plops down on the floor, as if overcome by exhaustion. "Long have I waited... waiting." He takes a deep breath and springs back to his feet. "Wait forever if I have to! Do you hear me?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30146 /* ~"Look... Arlo asked me to get rid of you, so you're going to have to leave."~ */ GOTO 5
  IF ~~ THEN REPLY #30147 /* ~"Are you all right?"~ */ GOTO 5
  IF ~~ THEN REPLY #30148 /* ~"Uh... I'll leave you to it then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 3.0 3.2 4.0 4.1
  SAY #30124 /* ~"Nooooooo!" Nestor's face turns beet-red and his whole body shakes in protest. "My fork! Can't leave without my fork! Hoo hoo! Fork, fork, fork!"~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30149 /* ~"Your... fork?"~ */ GOTO 6
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30150 /* ~"Enough of your ramblings, old man. It's time for you to leave... one way or another."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_1","GLOBALGood",-1)
~ GOTO 9
  IF ~~ THEN REPLY #30151 /* ~"I can see this is getting me nowhere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 5.0 11.0
  SAY #30125 /* ~"Fork? Fork! Fork! Can't go home without my fork!" Nestor's frenzy reaches a violent crescendo. He begins hopping up and down maniacally, then suddenly stops, lowers his head, and runs headlong into a large, wooden cupboard that stands against the back wall of the flophouse. The force of the impact knocks the old man flat on his back. After a few seconds he stands back up, a dazed expression on his face. "Gone. Stolen. Can't go home without my fork."~ */
  IF ~~ THEN REPLY #30152 /* ~"Stolen, you say? Who took your fork?"~ */ GOTO 7
  IF ~~ THEN REPLY #30153 /* ~"I can see this is getting me nowhere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #30126 /* ~Nestor stares at you for a long moment, then begins rummaging through the pockets of his filthy tunic. After a few seconds he produces what appears to be a dismembered ear. Judging by the stench and color of the ear, you'd wager that the old loon has been toting it around in his pocket for some time. "You have my fork, don't you? Don't you! Hoo hoo!" He holds the ear close as if speaking to it. "Bring back my fork!"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30154 /* ~"If I can find you a fork, then will you leave?"~ */ GOTO 8
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30155 /* ~"Maybe I can help you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nestor_1","GLOBALGood",1)
~ GOTO 8
  IF ~~ THEN REPLY #30156 /* ~"Uh... Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30127 /* ~"Wait! Wait! Waiting! Hoo hoo!" He shakes the ear violently as he shouts into it. "Until you bring it back! Then I can go home!"~ */
  IF ~  PartyHasItem("NesFork")
~ THEN REPLY #30157 /* ~"Is this the fork you speak of?"~ */ DO ~TakePartyItemNum("NesFork",1)
~ GOTO 12
  IF ~~ THEN REPLY #30158 /* ~"Right. I'll try to find your fork, then. Farewell."~ */ DO ~SetGlobal("Nestor_Quest","GLOBAL",1)
~ JOURNAL #29868 /* ~I've agreed to help the Flophouse loon, Nestor, find his fork. The poor sod seemed quite deranged, carrying around a severed ear in his pocket and talking to it like it could hear him, but I don't suppose it could do any harm to look for a fork for him.~ */ EXIT
  IF ~~ THEN REPLY #30159 /* ~"Never mind. I've got better things to do than hunt down silverware for a madman. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #30128 /* ~"Nooooo! Can't go home without my fork!" He backs away from you, snarling and baring his teeth like a cornered animal.~ */
  IF ~~ THEN REPLY #30160 /* ~Grab a hold of him.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nestor_2","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #30161 /* ~"Look, I don't want to hurt you... but you *have* to leave."~ */ GOTO 11
  IF ~~ THEN REPLY #30162 /* ~"Have it your way, then. Farewell." ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #30129 /* ~You reach out to grab him, but the old man is surprisingly fast for his age. Before you can get a grip on him, he twists out of your grasp and sinks his teeth into your outstretched hand. Recoiling in pain, you quickly withdraw your hand. ~ */
  IF ~~ THEN REPLY #30163 /* ~"Alright. We do this the hard way then..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #30164 /* ~"Look, I don't want to hurt you... but you *have* to leave."~ */ GOTO 11
  IF ~~ THEN REPLY #30165 /* ~"Have it your way, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1
  SAY #30130 /* ~Nestor calms down slightly, his bulging eyes seem on the verge of tears. "Can't go home. Can't. Can't. Can't. Not without fork." ~ */
  IF ~  Global("Nestor_Quest","GLOBAL",0)
~ THEN REPLY #30166 /* ~"Your... fork?"~ */ GOTO 6
  IF ~~ THEN REPLY #30167 /* ~"I can see this is getting me nowhere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.2 8.0
  SAY #30131 /* ~Nestor hastily snatches up the fork. "My fork? My fork! Fork! Fork! Fork! Hoo hoo!" He hops up and down excitedly, waving the fork back and forth in an elaborate pattern above his head as if he were performing some sort of ritual. "Now I can go home! Farewell! Hoo hoo!" ~ */
  IF ~~ THEN REPLY #30168 /* ~"Farewell, Nestor."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #30132 /* ~Nestor turns to leave, then, as if struck with some afterthought, he turns back around and hands you a scrap of something soft and rubbery: the severed ear. Upon closer examination, you notice that there is an earring still dangling from it. ~ */
  IF ~~ THEN REPLY #30169 /* ~Pocket the earring and discard the rotting piece of flesh.~ */ DO ~GiveItemCreate("ObEar",Protagonist,1,0,0)
SetGlobal("Nestor_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #28825 /* ~I have returned Nestor's fork. The fork turned out to be a portal key of some kind. Once back in his possession, Nestor was able to return to wherever it is he's originally from. I wonder how long the poor sod had been stranded in Sigil without the means to get home?~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #61633 /* ~Nestor ignores you entirely, his gaze fixed on the cupboard at the back of the room.~ */
  IF ~~ THEN REPLY #61634 /* ~Leave.~ */ EXIT
END
