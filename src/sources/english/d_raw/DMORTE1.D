// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMORTE1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMORTE1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  !InParty("Morte")
Global("Morte","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #39792 /* ~"Hey, chief. You okay? You playing corpse or you putting the blinds on the Dusties? I thought you were a deader for sure."~ [MRT001] */
  IF ~~ THEN REPLY #39793 /* ~"Wh...? Who are you?"~ */ DO ~SetGlobal("Morte","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #39795 /* ~"Uh... who am *I?* How about *you* start? Who're you?"~ */
  IF ~~ THEN REPLY #39796 /* ~"I... don't know. I can't remember."~ */ GOTO 2
  IF ~~ THEN REPLY #39797 /* ~"I asked *you* first, skull."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0
  SAY #39798 /* ~"You can't remember your *name?* Heh. Well, NEXT time you spend a night in this berg, go easy on the bub. Name's Morte. I'm trapped in here, too."~ */
  IF ~~ THEN REPLY #39799 /* ~"Trapped?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #39800 /* ~"Yeah, 'an I asked you *second.* What's your name?"~ */
  IF ~~ THEN REPLY #39801 /* ~"I... don't know. I can't remember."~ */ GOTO 2
  IF ~~ THEN REPLY #39802 /* ~"You first, skull. It's the last time I'll ask."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #39803 /* ~"Tchhhh... you're tighter than a wet rope. All right, *I'll* be the nice guy here. Name's Morte. Who're you?"~ */
  IF ~~ THEN REPLY #39804 /* ~"I... don't know. I can't remember."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #39805 /* ~"Yeah, since you haven't had time to get your legs yet, here's the chant: I've tried all the doors, and this room is locked tighter than a chastity belt."~ */
  IF ~~ THEN REPLY #39806 /* ~"We're locked in... where? What is this place?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #39807 /* ~"It's called the 'Mortuary'... it's a big black structure with all the architectural charm of a pregnant spider."~ */
  IF ~~ THEN REPLY #39808 /* ~"'The Mortuary'? What... am I dead?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #39809 /* ~"Not from where I'm standing. You got scars a-plenty, though... looks like some berk painted you with a knife. All the more reason to give this place the laugh before whoever carved you up comes back to finish the job."~ */
  IF ~~ THEN REPLY #39810 /* ~"Scars? How bad are they?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #39811 /* ~"Well... the carvings on your chest aren't TOO bad... but the ones on your back..." Morte pauses. "Say, looks like you got a whole tattoo gallery on your back, chief. Spells out something..."~ */
  IF ~~ THEN REPLY #39812 /* ~"Tattoos on my back? What do they say?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #39813 /* ~"Heh! Looks like you come with directions..." Morte clears his throat. "Let's see... it starts with..."

"'I know you feel like you've been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that'll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he's not in the dead-book already.'"~ */
  IF ~~ THEN REPLY #39814 /* ~"Pharod...? Does it say anything else?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #39815 /* ~"Yeah, there's a bit more..." Morte pauses. "Let's see... it goes on..."

'Don't lose the journal or we'll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they'll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.'~ */
  IF ~~ THEN REPLY #39816 /* ~"No wonder my back hurts; there's a damn novel written there. As for that journal I'm supposed to have with me... was there one with me while I was lying here?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #39817 /* ~"No... you were stripped to the skins when you arrived here. 'Sides, looks like you got enough of a journal penned on your body."~ */
  IF ~~ THEN REPLY #39818 /* ~"What about Pharod? Do you know him?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #39819 /* ~"Nobody I know... but then again, I don't know many people. Still, SOME berk's got to know where to find Pharod... uh, once we get out of here, that is."~ */
  IF ~~ THEN REPLY #39820 /* ~"How *do* we get out of here?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #39821 /* ~"Well, all the doors are locked, so we'll need the key. Chances are, one of the walking corpses in this room has it."~ */
  IF ~~ THEN REPLY #39822 /* ~"Walking corpses?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #39823 /* ~"Yeah, the Mortuary keepers use dead bodies as cheap labor. The corpses are dumb as stones, but they're harmless, and won't attack you unless you attack first."~ */
  IF ~~ THEN REPLY #39824 /* ~"Is there some other way? I don't want to kill them just for a key."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Morte_1","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #39825 /* ~"So I should attack one of these corpses and loot it for the key?"~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #39826 /* ~"What, you think it's going to hurt their feelings? They're DEAD. But if you want a bright side to this: if you kill them, at least they'll have a rest before their keepers raise them up to work again."~ */
  IF ~~ THEN REPLY #39827 /* ~"Well, all right... I'll take one of them down and get the key."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.0
  SAY #39828 /* ~"Well, before you do that, arm yourself first. I think there's a scalpel on one of the shelves around here."

^NNOTE: Search the shelves in the room for a weapon to attack the zombies with. <SEARCH_WEAPON>^-~ */
  IF ~~ THEN REPLY #39829 /* ~"All right, I'll look for one."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #39830 /* ~"One last thing: Those corpses are as slow as molasses, but getting punched by one of them is like being kissed by a battering ram. If they start getting an edge on you, remember you can RUN, and they can't. Use it to keep some distance if you need to recover."

^NNOTE: <RUNAWAY> If you are in danger of dying, use running to keep your distance from the zombies while you recover.^-~ */
  IF ~~ THEN REPLY #39831 /* ~"All right. Thanks for the advice."~ */ DO ~ShowFirstTimeHelp()
ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 18 // from:
  SAY #39832 /* ~"There should be a scalpel on one of the shelves around here. I'd find it before locking horns with any of the corpses around here."

^NNOTE: Search the shelves in the room for a weapon to attack the zombies with. <SEARCH_WEAPON>^-~ */
  IF ~~ THEN REPLY #39833 /* ~"All right... I'll keep searching."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("Scalpel")
Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY #39834 /* ~"All right, you found the scalpel! Now, go get those corpses... and don't worry, I'll stay back and provide valuable tactical advice."~ */
  IF ~~ THEN REPLY #39835 /* ~"Maybe you could *help* me, Morte."~ */ GOTO 20
  IF ~~ THEN REPLY #39836 /* ~"All right."~ */ GOTO 23
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #39837 /* ~"I WILL be helping you. Good advice is hard to come by."~ */
  IF ~~ THEN REPLY #39838 /* ~"I meant help in attacking the *corpse.*"~ */ GOTO 21
  IF ~~ THEN REPLY #39839 /* ~"All right, then."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #39840 /* ~"Me? I'm a romantic, not a soldier. I'd just get in the way."~ */
  IF ~~ THEN REPLY #39841 /* ~"When I attack this corpse, you better be right there with me or you'll be the next thing that I plunge this scalpel in."~ */ GOTO 22
  IF ~~ THEN REPLY #39842 /* ~"All right, then."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #39843 /* ~"Eh... all right. I'll help you."

^NNOTE: If you wish Morte to help you attack, simply make sure the both of you are selected when you attack the corpse. Morte will join in the attack.^-~ */
  IF ~~ THEN REPLY #39844 /* ~"I'm glad we understand each other."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 19.1 20.1 21.1 22.0
  SAY #39845 /* ~"Time to introduce these corpses to the second death, then..."

^NNOTE: <ATTACKNOTE>^-~ */
  IF ~~ THEN REPLY #39846 /* ~"Let's go."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
!PartyHasItem("KeyPr")
Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #39847 /* ~"All right, you took care of the right corpse, looks like. Now you gotta find the key. It should have been on its body. Once we have it, we can get out of here."

^NNOTE: <DEADPILE>^-~ */
  IF ~~ THEN REPLY #39848 /* ~"All right."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Mortuary_Walkthrough","GLOBAL",0)
PartyHasItem("KeyPr")
~ THEN BEGIN 25 // from:
  SAY #39849 /* ~"All right, that's the key. It must fit the lock of one of the doors in the room."~ */
  IF ~~ THEN REPLY #39850 /* ~"I'll try all the doors, then."~ */ EXIT
END

IF WEIGHT #0 ~  !InParty("Morte")
GlobalGT("Morte","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #39851 /* ~"I knew you'd be back, chief! Finally realized you needed me, huh?"~ [MRT516] */
  IF ~~ THEN REPLY #39852 /* ~"Yeah... let's go."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39853 /* ~"Not right now, Morte."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #39854 /* ~"Hmmmph. Well, I don't know how long I'm going to wait here, so I'm going to give you one LAST chance. You sure you don't want my sage advice and quick wit?"~ */
  IF ~~ THEN REPLY #39855 /* ~"Morte, you don't have EITHER of those things."~ */ GOTO 28
  IF ~~ THEN REPLY #39856 /* ~"All right, I changed my mind. Come on, let's go."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39857 /* ~"Not at the moment, Morte. Maybe later."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.2
  SAY #39858 /* ~"Are you trying to hurt my feelings, chief? What, was it something I said? The fact I don't have arms? What?"~ */
  IF ~~ THEN REPLY #39859 /* ~"All right, I changed my mind. Come on, let's go."~ */ DO ~ChangeAIScript("pcmorte",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~~ THEN REPLY #39860 /* ~"Nothing like that. It's just I don't need your company right now. Farewell, Morte."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #39861 /* ~"Well, I'm not going to wait FOREVER, so you better come back as soon as you change your mind."~ */
  IF ~~ THEN REPLY #39862 /* ~"I will. Farewell, Morte."~ */ EXIT
END

IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
~ THEN BEGIN 30 // from:
  SAY #39863 /* ~"What's eating you, chief?"~ [MRT515] */
  IF ~~ THEN REPLY #39864 /* ~"Nothing at the moment, Morte. Just checking to see if you were still with me."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #42298 /* ~"Uh, chief... they can't hear you, all right? They're dead."~ */
  IF ~~ THEN REPLY #42299 /* ~"But you're dead. And you're talking to me."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #42300 /* ~"Yeah, but *I'm* special. Death couldn't kill my zest for life. These corpses here..." Morte rolls his eyes. "They probably didn't have much personality to begin with."~ */
  IF ~~ THEN REPLY #42301 /* ~"I... see."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #42302 /* ~"Look, chief... watching you trying to swap the chant with these corpses isn't doing much for my morale. Let's leave the corpse-talk for the barmies, all right?"~ */
  IF ~~ THEN REPLY #42303 /* ~"All right, then. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #42306 /* ~"This looks like the lucky petitioner here, chief. Look... he's got the key there in his hand."~ */
  IF ~~ THEN EXTERN ~DZM782~ 2
END
