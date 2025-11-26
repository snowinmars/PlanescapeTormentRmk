// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~You see a tall, slender man, with a glassy eyed expression. He seems engrossed in some tale that the shopkeeper is relating. Occasionally he nods his head, but makes no comments of his own.~ */
  IF ~~ THEN REPLY #2908 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~The man turns slightly at your greeting, just enough to acknowledge your presence. You notice that he is a little pale of complexion and rather gaunt looking. He is giving you a blank stare. The shopkeeper does not seem to notice any of this and continues with his stream of useless prattle.~ */
  IF ~~ THEN REPLY #35924 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"Are you... all right?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~The man slowly turns his attention back to the shopkeeper and nods at some point being made. The nod seems to come too late in the conversation to you, but the shopkeeper is oblivious to this fact. Slowly the man returns his attention to you, staring at you blankly.~ */
  IF ~~ THEN REPLY #35928 /* ~"Are you... all right?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~The man continues to stare at you and slowly nods. You wait for any further response but he says nothing, only stares. You are about to turn away in frustration when you think you notice a strange musty odor about the man.~ */
  IF ~~ THEN REPLY #35931 /* ~Step closer and sniff.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~Ignore the man and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~You lean in and sniff at the man, unsure what you'll find. As you do, a musty odor fills your senses, an odor you recognize from your time in the mortuary. It is the smell of dead flesh preserved by magic.~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"You're a zombie, aren't you?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"You're a zombie, aren't you?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~The man slowly nods his head to you again, then returns his attention to the shopkeeper. He ignores any further attempts to communicate.~ */
  IF ~~ THEN REPLY #35937 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~The creature continues to stare at you blankly. Slowly, as if with great effort, he begins to reply to you. Only your speak with dead power makes him understandable. "Yes... I am... Dimtree."~ */
  IF ~~ THEN REPLY #35939 /* ~"Why are you here, Dimtree?"~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"I have some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~Dimtree slowly glances at the shopkeeper and makes a feeble gesture toward him. Seeing this as a sign of interest, the shopkeeper redoubles his efforts in telling whatever tale he is relating to the poor creature. Dimtree looks at you again. "Hamrys... He talks... Hamrys never stops... Wanders town... annoys Master, annoys everyone... Master create Dimtree... Tells Dimtree talk Hamrys... Now Hamrys stay in shop... Master happy... town happy. Dimtree sad..."~ */
  IF ~~ THEN REPLY #35943 /* ~"Is there anything I can do to help you, Dimtree?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"I have some questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"Farewell, Dimtree."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~The creature pauses, then resumes his slow speech with you. You can almost detect a pleading tone in his voice. "Yes... Find master... Sebastion... Ask him release me... Please..." He turns his attention to Hamrys momentarily. "Please..."~ */
  IF ~~ THEN REPLY #35947 /* ~"Why don't I just put you out of your misery?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"I don't know... I'll think about it. I have some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~Dimtree barely shakes his head at you. "No... Master revive... Must ask master... Sebastion... please." He awaits your answer.~ */
  IF ~~ THEN REPLY #35951 /* ~"Sure, Dimtree. I'll see what I can do for you."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~I have agreed to help Dimtree the zombie. I must find someone named Sebastion and ask him to free Dimtree from his current condition.~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"Sorry, Dimtree. Not my job, you know?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"I don't know... I'll think about it. I have some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~You can almost sense a feeling of relief emanating from the zombie. "Dimtree... thank you friend..."~ */
  IF ~~ THEN REPLY #35957 /* ~"You're welcome. I have some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"Farewell, Dimtree."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~You can feel a sense of disappointment in the air as Dimtree turns away from you. He begins nodding once more to the shopkeeper who has not once slowed his rain of words during your entire conversation.~ */
  IF ~~ THEN REPLY #35960 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~The creature gives you a barely perceptible shrug of the shoulders. "Know... nothing... Dimtree summoned... by master... Know darkness... peace... rest... Then Hamrys... Sorry... help you... if could..."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"Do you know where I can find Sebastion?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"I see... Farewell then."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~The tall, gaunt man is still locked in conversation with the shopkeeper. The shopkeeper is doing all the talking, however.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"Greetings."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"Just thought I'd pay my respects... farewell."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"I have some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~Ignore him.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~Dimtree turns to face you slightly as you approach. You can feel a sense of expectation in the air about him. "You... find master? Dimtree release?"~ */
  IF ~~ THEN REPLY #35970 /* ~"Do you know where I can find Sebastion?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"Not yet, Dimtree. I'll keep working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~The creature pauses. "Not know... Remember voice... give order be here... Walking... Hamrys... Nothing more... Sorry."~ */
  IF ~~ THEN REPLY #35973 /* ~"I see, farewell then."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~Dimtree turns to face you slightly as you approach. You can feel a sense of expectation in the air about him. "You... find master? Dimtree release?"~ */
  IF ~~ THEN REPLY #35975 /* ~"Yes, Dimtree. I know how to release you now."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"Not right now, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~Dimtree turns to face you and gestures toward you. "Please friend..."~ */
  IF ~~ THEN REPLY #35978 /* ~Speak the words Sebastion taught you.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~You pause to gather your thoughts and then carefully speak the words Sebastion taught you. You then reach out and touch Dimtree lightly on the forehead. ~ */
  IF ~~ THEN REPLY #35981 /* ~"Rest well, Dimtree."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~I cast the spell that I learned from Sebastion on Dimtree. He is now at peace and no longer needs to listen to Hamrys' prattle.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~With a sigh the zombie collapses at your feet. You think you hear a fleeting *thank you, friend* as he falls to the ground.~ */
  IF ~~ THEN REPLY #35983 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~Dimtree turns to face you. "You... help please? You... find Sebastion... release me..."~ */
  IF ~~ THEN REPLY #35985 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~I have agreed to help Dimtree the zombie. I must find someone named Sebastion and ask him to free Dimtree from his current condition.~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"No, it's not my problem."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"I don't know, I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~You can almost sense a feeling of relief emanating from the zombie. "Dimtree... thank you friend..."~ */
  IF ~~ THEN REPLY #35990 /* ~"Where can I find Sebastion?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"You're welcome. Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~Dimtree turns to face you. "Why you here... You refuse help... You change mind... find Sebastion... release me... please?"~ */
  IF ~~ THEN REPLY #35993 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~I have agreed to help Dimtree the zombie. I must find someone named Sebastion and ask him to free Dimtree from his current condition.~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"No, it's not my problem."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"I don't know, I'll think about it. Farewell."~ */ EXIT
END
