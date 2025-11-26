// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSYBIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSYBIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36172 /* ~You see a figure hidden amid the shadows in the corner of the room. As you draw near, a young woman steps out to reveal herself. She is dressed in a loose-fitting tunic, which, together with her short-cropped hair and slender frame, gives her a rather boyish appearance. "I wouldn't go in there if I were you." She nods in the direction of the door on the south wall.~ */
  IF ~~ THEN REPLY #36189 /* ~"Why? What is beyond the door?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 1
  IF ~~ THEN REPLY #36190 /* ~"Who are you?"~ */ DO ~KillFloatMessage("Sybil")
~ GOTO 2
  IF ~~ THEN REPLY #36191 /* ~Ignore the girl, move on.~ */ DO ~KillFloatMessage("Sybil")
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 14.0
  SAY #36173 /* ~She winces at the sound of your voice, putting a finger to her lips to indicate silence. She pauses for a moment, then answers in a hushed voice. "A whole mess of them howling lunatics, that's what. Looks like they're having some sort of gathering. Won't be able to get through to the alley until they clear out."~ */
  IF ~~ THEN REPLY #36192 /* ~"Howling lunatics?"~ */ GOTO 3
  IF ~~ THEN REPLY #36193 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #36194 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.0 14.1
  SAY #36174 /* ~"My name's Sybil." She whispers quietly, then spits into her palm and reaches out to clasp your hand.~ */
  IF ~~ THEN REPLY #36195 /* ~"What are you doing in here?"~ */ GOTO 9
  IF ~~ THEN REPLY #36196 /* ~"Thanks for the warning, Sybil. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #36175 /* ~"Is there an echo in here? Yes, howling lunatics. They belong to the Starved Dog Barking gang, a band of barmy Xaositect thugs that plague this part of the Hive."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36197 /* ~"Xaositects? I am a member of their faction... they'll let me pass."~ */ GOTO 4
  IF ~~ THEN REPLY #36198 /* ~"How many of them are in there?"~ */ GOTO 5
  IF ~~ THEN REPLY #36199 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36176 /* ~"You don't get it, do you? The Dogs are even crazier than your average Chaosman. Faction member or not, you go in there and you're a deader for sure."~ */
  IF ~~ THEN REPLY #36200 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #36201 /* ~"How many of them are in there?"~ */ GOTO 5
  IF ~~ THEN REPLY #36202 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 10.1 11.0 12.2
  SAY #36177 /* ~"I counted about a dozen of them. Of course, I was peeking through a crack in the door, so I could be off by a handful or so."~ */
  IF ~~ THEN REPLY #36203 /* ~"A dozen or so? That's hardly a challenge."~ */ GOTO 6
  IF ~~ THEN REPLY #36204 /* ~"Looks like we'll have to fight our way through."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36205 /* ~"Is there another way to get through to the alley?"~ */ GOTO 7
  IF ~~ THEN REPLY #36206 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36178 /* ~"Look, you can play hero if you want, but leave me out of it. I'm staying right here. If by some miracle you don't get your innards stomped out by those animals in there, maybe I'll see you around." She turns and slips back into the shadows of the corner.~ */
  IF ~~ THEN REPLY #36207 /* ~"On second thought... maybe I shouldn't go in there."~ */ GOTO 7
  IF ~~ THEN REPLY #36208 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 6.0 12.0 13.0
  SAY #36179 /* ~"There may be another way to get past those animals without a fight. There is another door that leads in there. From what I was able to see, there are stacks of wooden crates along the same wall as the other door. It may be possible to sneak from *that* door to the exit on the other side of the room. There's only one problem..."~ */
  IF ~~ THEN REPLY #36209 /* ~"What would that be?"~ */ GOTO 8
  IF ~~ THEN REPLY #36210 /* ~"There's always a problem... wouldn't be much fun otherwise."~ */ GOTO 8
  IF ~~ THEN REPLY #36211 /* ~"Never mind. I have enough problems of my own."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #36180 /* ~"The door's locked... I tried it. My guess is that the key is on one of the thugs upstairs. I'm not addle-coved enough to go up there looking for it, though." She folds her arms across her chest and stares at you expectantly.~ */
  IF ~~ THEN REPLY #36212 /* ~"If the key is up there... I'll find it. Farewell."~ */ DO ~SetGlobal("Sybil_Quest","GLOBAL",1)
~ JOURNAL #36033 /* ~I ran into a girl named Sybil in the Tenement of Thugs. Apparently she had become trapped inside the Tenement by a gang of Xaositects that is holding some sort of gathering in the room that contains the exit to the Alley of Lingering Sighs. She told me of another door to the room that may provide a means to slip past the thugs without a fight. I have agreed to find the key to this door, which is supposedly carried by one of the thugs on the upper floors of the Tenement.~ */ GOTO 17
  IF ~~ THEN REPLY #36213 /* ~"Never mind. I'll take my chances with the lunatics."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #36181 /* ~"What does it look like I'm doing? I'm hiding. I came in here looking for... food." You notice that as she speaks, her right hand moves instinctively to the pouch at her waist. "Only the barking idiots in the next room showed up and decided to throw a party on the front doorstep. Now I'm trapped in here and can't get out."~ */
  IF ~~ THEN REPLY #36214 /* ~"Barking idiots?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36215 /* ~"You're looking for food, eh? What's in the pouch?"~ */ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #36216 /* ~"You're lying. You're a thief."~ */ GOTO 12
  IF ~~ THEN REPLY #36217 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #36182 /* ~"Is there an echo in here? Yes, barking idiots. They belong to the Starved Dog Barking gang, a band of barmy Xaositect thugs that plague the Hive."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #36218 /* ~"Xaositects? I am a member of their faction... they'll let me pass."~ */ GOTO 11
  IF ~~ THEN REPLY #36219 /* ~"How many of them are in there?"~ */ GOTO 5
  IF ~~ THEN REPLY #36220 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36183 /* ~"You don't get it, do you? The Dogs are even crazier than your average Chaosman. Faction member or not, you go in there and you're a deader for sure."~ */
  IF ~~ THEN REPLY #36221 /* ~"How many of them are in there?"~ */ GOTO 5
  IF ~~ THEN REPLY #36222 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 9.2
  SAY #36184 /* ~She seems about to respond, but stops herself short. She eyes you for a moment, then shrugs her shoulders. "Alright, alright... so I'm a thief. A girl's got to earn a living somehow. What's it to you anyway? You're obviously not Harmonium, and you're definitely not with the savages in there."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #36223 /* ~"You're right... I don't belong here either. Do you know of another way to get through to the alley?"~ */ GOTO 7
  IF ~~ THEN REPLY #36224 /* ~"I could always hand you over to the thugs... maybe they'd return the favor and let me pass."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sybil_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #36225 /* ~"How many of them are in there?"~ */ GOTO 5
  IF ~~ THEN REPLY #36226 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #36185 /* ~"Ha! You wouldn't do that. Those brutes would just as soon bash your skull than look at you. Besides... I can help you."~ */
  IF ~~ THEN REPLY #36227 /* ~"Help me? How?"~ */ GOTO 7
  IF ~~ THEN REPLY #36228 /* ~"I'm not interested in help from any pilfering little piece of gutter trash. I'm going to give you up to the thugs."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Tenement_Alarm","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #36229 /* ~"Never mind. I'll take my chances with the lunatics."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #36186 /* ~"You again?" Sybil seems irritated, yet somewhat relieved to see you. "Blistering Baator, cutter! Do you think you could make any more noise? I heard you coming all the way down the hall."~ */
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36230 /* ~"What is beyond the door?"~ */ GOTO 1
  IF ~  Global("Sybil_Quest","GLOBAL",0)
!Dead("Sentry")
~ THEN REPLY #36231 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Sybil_Quest","GLOBAL",1)
PartyHasItem("KeySybil")
!Dead("Sentry")
~ THEN REPLY #36232 /* ~"Is this the key you spoke of?"~ */ GOTO 15
  IF ~  Dead("Sentry")
~ THEN REPLY #36233 /* ~"I've taken care of the thugs blocking the exit. You should be able to leave now."~ */ GOTO 16
  IF ~~ THEN REPLY #36234 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #36187 /* ~"How should I know? Why don't you go around the corner and try to unlock the door with it? I'll watch from the crack in this door here. If you make it out to the Alley in one piece, I'll be right behind you."~ */
  IF ~~ THEN REPLY #36235 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  Global("Sybil_Quest","GLOBAL",2)
Global("Current_Area","GLOBAL",401)
~ THEN BEGIN 16 // from: 14.3
  SAY #36188 /* ~"I must say, cutter... I'm impressed. I thought for sure those animals would chew you up good. Well, I guess I should thank you." She pauses for a moment, then reaches into her pouch and pulls forth a small, green gemstone. "Here... this one's on the Dogs. See you around, cutter."~ */
  IF ~~ THEN REPLY #36236 /* ~"Farewell, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
~ JOURNAL #36032 /* ~My efforts made it possible for Sybil to safely escape from the Tenement of Thugs. Somehow I can't help thinking that it won't be long before she winds up in trouble again.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.0
  SAY #50008 /* ~"If you do manage to live long enough to find the key, the door is in a room to the southeast. I'll be watching from the shadows. If you can unlock the door and make it out to the Alley in one piece, I'll be right behind you."~ */
  IF ~~ THEN REPLY #50009 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sybil_Quest","GLOBAL",0)
Dead("Sentry")
~ THEN BEGIN 18 // from:
  SAY #50010 /* ~"I must say, cutter... I'm impressed. I thought for sure those animals would chew you up good. Well, I guess I should thank you." She pauses for a moment, then reaches into her pouch and pulls forth a small, green gem. "Here... this one's on the Dogs. See you around, cutter."~ */
  IF ~~ THEN REPLY #50011 /* ~"Farewell, Sybil."~ */ DO ~GiveItem("AddrTear",Protagonist)
SetGlobal("Sybil_Quest","GLOBAL",3)
AddexperienceParty(1000)
ChangeDialog("Sybil","")
EscapeArea()
~ EXIT
END
