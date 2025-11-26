// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHAD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Speak_With_Dead","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #23954 /* ~This sandy-haired Collector's corpse is covered with nasty bites. The dead man's neck still writhes, as if it were trying to twist itself off his body.~ */
  IF ~~ THEN REPLY #23967 /* ~"That's... interesting."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",3)
~ THEN BEGIN 1 // from:
  SAY #23968 /* ~Chad's corpse speaks in its gravel-like voice: "What ya want, friend?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23969 /* ~"Where did you say that decanter was, again?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23970 /* ~"I'd like to know where that item you were talking about is."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
~ GOTO 4
  IF ~~ THEN REPLY #23971 /* ~"Tell me about yourself."~ */ GOTO 5
  IF ~~ THEN REPLY #23972 /* ~"Tell me about the other Collectors."~ */ GOTO 6
  IF ~~ THEN REPLY #23973 /* ~"What can you tell me about the catacombs?"~ */ GOTO 8
  IF ~~ THEN REPLY #23974 /* ~"Nothing, for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0 4.1 5.0 6.1 7.0 8.0 14.1
  SAY #23975 /* ~"Aww, come ON." He pauses. "What do ya want?"~ */
  IF ~  Global("Revenge_V","GLOBAL",3)
~ THEN REPLY #23976 /* ~"Where did you say that decanter was, again?"~ */ GOTO 3
  IF ~  Global("Revenge_V","GLOBAL",2)
~ THEN REPLY #23977 /* ~"I'd like to know where that item you were talking about is."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #23978 /* ~"Tell me about yourself."~ */ GOTO 5
  IF ~~ THEN REPLY #23979 /* ~"Tell me about the other Collectors."~ */ GOTO 6
  IF ~~ THEN REPLY #23980 /* ~"What can you tell me about the catacombs?"~ */ GOTO 8
  IF ~~ THEN REPLY #23981 /* ~"Nothing, for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0
  SAY #23982 /* ~"You sneak past either the deaders or the rats into the Drowned Nations. Once you've made it there, you head down the main passageway past three doors on your left. You'll pass under an arch, and then you take the first door on your left. It's in the arch closest to the back wall. I don't know the command word... but it'll still trickle some drops for you. You got all that, friend?"~ */
  IF ~~ THEN REPLY #23983 /* ~"I think so. I had some other questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #23984 /* ~"I think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 14.0
  SAY #23985 /* ~"All right, here's what it is: There's a reason the Drowned Nations are called that. There's a magic bottle that never stops its flow, a decanter, hidden in the Drowned Nations catacombs. You get that, and you got all the fresh water you'll ever need."~ */
  IF ~~ THEN REPLY #23986 /* ~"All right. Where is it?"~ */ GOTO 3
  IF ~~ THEN REPLY #23987 /* ~"I had some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #23988 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2
  SAY #23989 /* ~"Me? I'm Chad. Used to be an artist. Money, fame, respect, women... and then it all fell apart. Joined up with Pharod and his crew, and became one of the best catacomb-prowlers in the bunch - I could lift something from under the nose of the ghoul queen herself. Then... then I got cocky, and I got designs on one of the stone keeps, too - that's what I call the *serious* catacombs down here - and I turned into vargouille food. Nearly became a vargouille myself. Held onto my own head here by force of will alone. Good thing you came along."~ */
  IF ~~ THEN REPLY #23990 /* ~"I see. I had some other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #23991 /* ~"Good thing, indeed. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3
  SAY #23992 /* ~"Heh... there's a good many of us. Gris was best though, behind me of course."~ */
  IF ~  Global("Know_Gris_Dead","GLOBAL",1)
~ THEN REPLY #23993 /* ~"Gris is dead too."~ */ GOTO 7
  IF ~~ THEN REPLY #23994 /* ~"I had some other questions, then."~ */ GOTO 2
  IF ~~ THEN REPLY #23995 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #23996 /* ~"He is?" His voice brightens considerably. "At least he won't be crowing about how he's so much better'n me, then."~ */
  IF ~~ THEN REPLY #23997 /* ~"No, probably not. Answer some other questions, will you?"~ */ GOTO 2
  IF ~~ THEN REPLY #23998 /* ~"I wouldn't imagine so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 2.4
  SAY #23999 /* ~"What can I tell you about the catacombs? Lots of monsters, and if you're smart, you won't waste your time down here. Come get what you need to get, and get out. Too many of these places have traps, and too many've become home to things you'd rather not see. My advice is to get out while you can."~ */
  IF ~~ THEN REPLY #24000 /* ~"Just answer some questions for me..."~ */ GOTO 2
  IF ~~ THEN REPLY #24001 /* ~"I'll consider it."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #24002 /* ~The corpse's neck is still writhing as you approach. "Still haven't found the one that did me in, have you?" asks the corpse.~ */
  IF ~~ THEN REPLY #24003 /* ~"Not yet. I'm working on it. I needed some answers, first."~ */ GOTO 10
  IF ~~ THEN REPLY #24004 /* ~"Not yet. I'm working on it."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #24005 /* ~"Make it quick, berk! Don't know how much longer my neck can stand this strain..."~ */
  IF ~~ THEN REPLY #24006 /* ~"Tell me what you're going to give me for doing this."~ */ GOTO 11
  IF ~~ THEN REPLY #24007 /* ~"Tell me about yourself."~ */ GOTO 12
  IF ~~ THEN REPLY #24008 /* ~"Tell me about these catacombs."~ */ GOTO 12
  IF ~~ THEN REPLY #24009 /* ~"What did you want me to do again?"~ */ GOTO 13
  IF ~~ THEN REPLY #24010 /* ~"All right, all right. No need to get yourself worked up."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #24011 /* ~"I promised to tell you... how to find... erph... a magic item that I think'll come in handy..."~ */
  IF ~~ THEN REPLY #24012 /* ~"Good, good. Some more answers, please..."~ */ GOTO 10
  IF ~~ THEN REPLY #24013 /* ~"I'm on it. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 17 14 even though they appear after this state */
~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",1)
~ THEN BEGIN 12 // from: 10.1 10.2 17.1 17.2 17.3
  SAY #24014 /* ~"Look... my head is about to snap off... I don't really have *time* to talk right now... ask me... later."~ */
  IF ~  Global("Revenge_V","GLOBAL",1)
~ THEN REPLY #24015 /* ~"What did you want me to do again?"~ */ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24016 /* ~"What do you need from me?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Revenge_V","GLOBAL",0)
~ THEN REPLY #24017 /* ~"What is it you want, anyway?"~ */ DO ~SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.3 12.0 12.1 12.2 17.0 17.4
  SAY #24018 /* ~"See... this... neck?" It's stretching like taffy and contracting. "Damn vargouille bit me. I'm dead, and... I need to hold my head on if I don't want to be... one of those damnable... things." He's speaking with an effort. "You gotta kill the vargouilles down this passage... all of 'em... t'save me from that."~ */
  IF ~~ THEN REPLY #24019 /* ~"What will you give me for that?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Chad_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #24020 /* ~"You got it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Chad_1","GLOBALGood",1)
~ GOTO 15
END

IF WEIGHT #2 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Revenge_V","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #24021 /* ~You notice Chad's neck is better now... it is no longer bulging out as if it wanted to separate from the torso. "Thanks, friend... at least now I know I ain't going to be a vargouille for eternity... You want your reward now?"~ */
  IF ~~ THEN REPLY #24022 /* ~"Tell me."~ */ DO ~SetGlobal("Revenge_V","GLOBAL",3)
AddexperienceParty(3750)
~ GOTO 4
  IF ~~ THEN REPLY #24023 /* ~"No. Answer some other questions for me."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 13.0 13.1
  SAY #24024 /* ~"In return... I'll give you... directions to... a powerful magic item... deadsight tells me... you might need it..."~ */
  IF ~~ THEN REPLY #24025 /* ~"What is it?"~ */ GOTO 16
  IF ~~ THEN REPLY #24026 /* ~"I'm on my way."~ */ EXIT
  IF ~~ THEN REPLY #24027 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #24028 /* ~"Find it and... then I tell you. Not before."~ */
  IF ~~ THEN REPLY #24029 /* ~"Fine. I'm gone."~ */ EXIT
  IF ~~ THEN REPLY #24030 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF WEIGHT #4 ~  Global("Speak_With_Dead","GLOBAL",1)
Global("Chad_Talked","GLOBAL",0)
~ THEN BEGIN 17 // from:
  SAY #24031 /* ~This sandy-haired Collector's corpse is covered with nasty bites. The dead man's neck still writhes, as if it were trying to twist itself off his body. He speaks with an effort: "Hey... I'm Chad... need your help..."~ */
  IF ~~ THEN REPLY #24032 /* ~"What's wrong with you?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #24033 /* ~"What can you tell me about these catacombs?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24034 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24035 /* ~"Where are we?"~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #24036 /* ~"No. Farewell."~ */ DO ~SetGlobal("Chad_Talked","GLOBAL",1)
SetGlobal("Revenge_V","GLOBAL",1)
~ GOTO 13
END
