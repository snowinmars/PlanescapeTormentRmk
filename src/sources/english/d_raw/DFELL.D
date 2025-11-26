// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFELL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 4 3 1 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3013 /* ~Fell turns to face you as you approach. Next to you, Annah stiffens as she catches sight of Fell.~ */
  IF ~~ THEN REPLY #23037 /* ~"Greetings, Fell."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23038 /* ~"Annah... what's wrong?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23039 /* ~"Sorry to disturb you. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Fell","GLOBAL",0)
Global("Know_Dabus","GLOBAL",1)
NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #21094 /* ~You see a dabus... but something about it strikes you as odd. It has the same shock of white hair, the same greenish cast to its skin, the same pair of goat horns... then you suddenly realize this one is walking on the ground, not floating. For some reason, that makes you uneasy... and apparently it makes Annah uneasy as well, for she gives a sharp intake of breath as she catches sight of the dabus.~ */
  IF ~~ THEN REPLY #23040 /* ~"Uh... greetings."~ */ EXTERN ~DANNAH~ 118
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23041 /* ~"Annah... what's wrong?"~ */ DO ~SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ EXTERN ~DANNAH~ 119
  IF ~~ THEN REPLY #23042 /* ~"Sorry to disturb you. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 11
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  GlobalGT("Fell","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #21096 /* ~Fell turns to face you as you approach. He folds his arms into his sleeves and waits.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23043 /* ~Try and strike up a conversation, see if you can translate what Fell is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23044 /* ~Try and strike up a conversation, see if you can translate what Fell is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23045 /* ~Try and speak to Fell, see if you can understand him.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #23046 /* ~"Can I see what tattoos you have, Fell?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23047 /* ~"I had some questions for you..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23048 /* ~"I had some questions for you..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23049 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23050 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23051 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23052 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23053 /* ~"Annah, can you translate for me?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23054 /* ~"Dak'kon, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23055 /* ~"Fall-from-Grace, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23056 /* ~"Never mind. Sorry to disturb you. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Know_Dabus","GLOBAL",1)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #21101 /* ~You see a dabus... but something about it strikes you as odd. It has the same shock of white hair, the same greenish cast to its skin, the same pair of goat horns... then you suddenly realize this one is walking on the ground, not floating. For some reason, that makes you uneasy. ~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23057 /* ~Try and strike up a conversation, see if you can translate what the creature is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23058 /* ~Try and strike up a conversation, see if you can translate what the creature is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23059 /* ~Try and speak to it, see if you can understand it.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23060 /* ~"I had some questions for you..."~ */ GOTO 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23061 /* ~"I had some questions for you..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23062 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23063 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23064 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23065 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23066 /* ~"Annah, can you translate for me?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23067 /* ~"Dak'kon, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23068 /* ~"Fall-from-Grace, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23069 /* ~Ignore the dabus and explore the studio.~ */ EXIT
END

IF WEIGHT #2 ~  Global("Know_Dabus","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY #21498 /* ~You see a tall creature with a shock of white hair. Its skin has a greenish cast, and a pair of goat horns protrudes from its forehead. It is dressed in long flowing robes.~ */
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #23070 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #23071 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",0)
~ THEN REPLY #23072 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
SetGlobal("Annah_Warning_Fell","GLOBAL",1)
~ GOTO 6
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Warning_Fell","GLOBAL",1)
~ THEN REPLY #23073 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #23074 /* ~Ignore the creature and explore the studio.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21499 /* ~A series of symbols materializes above the creature's head. The symbols have a slight glow about them, and they just... hover there. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 211
END

IF ~~ THEN BEGIN 6 // from: 4.2 4.3
  SAY #21500 /* ~A series of symbols materializes above the creature's head. The symbols have a slight glow about them, and they just... hover there.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 118
END

IF ~~ THEN BEGIN 7 // from:
  SAY #21501 /* ~In response, 'Fell' bows. A lone symbol appears above his head. It is blurry at first, then resolves into a white oval with a black lightning bolt through it. For some reason, you have a feeling you *know* this creature.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 121
END

IF ~~ THEN BEGIN 8 // from: 2.5 3.4 4.1
  SAY #21502 /* ~The dabus waits patiently, its hands tucked into its sleeves. A series of symbols materialize above its head, then dissipate and a question mark appears.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23075 /* ~Try and strike up a conversation, see if you can translate what the dabus is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23076 /* ~Try and strike up a conversation, see if you can translate what the dabus is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23077 /* ~Try and speak to the dabus, see if you can understand it.~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #23078 /* ~"I had some questions for you..."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23079 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23080 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23081 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23082 /* ~"Morte, can you translate for me?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23083 /* ~"Annah, can you translate for me?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23084 /* ~"Dak'kon, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23085 /* ~"Fall-from-Grace, can you translate for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #23086 /* ~"I'm sorry, I don't understand you."~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~~ THEN REPLY #23087 /* ~"Uh... farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 9 // from: 2.0 2.1 3.0 3.1 8.0 8.1
  SAY #21503 /* ~You ask the dabus several questions, trying to get a feel for the rebuses that appear above its head. It is extremely patient throughout your 'discussion,' giving you easy sentences to translate. After a few minutes, you start to get the hang of it... it feels like you've done this before.~ */
  IF ~~ THEN REPLY #23088 /* ~"Maybe you can help me..."~ */ GOTO 13
  IF ~~ THEN REPLY #23089 /* ~"Just wanted to brush up on my rebuses. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 2.2 3.2 8.2
  SAY #21504 /* ~You ask the dabus several questions, trying to get a feel for the rebuses that appear above its head. Although it is extremely patient throughout your 'discussion,' you can't seem to get the hang of it. Eventually, the dabus stops floating symbols and simply waits.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #23090 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 216
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #23091 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 217
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #23092 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 218
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #23093 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 219
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #23094 /* ~"Annah, can you translate what he's saying for me?"~ */ EXTERN ~DANNAH~ 129
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #23095 /* ~"Dak'kon, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 77
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #23096 /* ~"Fall-from-Grace, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 15
  IF ~~ THEN REPLY #23097 /* ~"I'm sorry, I don't understand you."~ */ GOTO 12
  IF ~~ THEN REPLY #23098 /* ~"Uh... farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.2 8.12 9.1 10.8
  SAY #21505 /* ~The dabus bows slightly. Symbols swirl around its head, then it turns away.~ */
  IF ~~ THEN REPLY #23099 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.11 10.7
  SAY #21506 /* ~A series of symbols appear above the dabus' head. It then bows and turns away.~ */
  IF ~~ THEN REPLY #23100 /* ~"Uh... farewell."~ */ JOURNAL #21863 /* ~I found a dabus in a strange parlor, but I couldn't understand what he was saying. I'll have to find a native to translate for me.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.4 3.3 8.3 9.0 15.4 16.4 18.4 19.4 21.4 22.4 24.4 25.4 27.3 28.4 30.0 32.7 33.7 35.7 36.7 38.7 39.7 41.6 42.6 44.6 45.6 47.3 48.3 50.3 51.3 53.4 54.5 56.2 57.1 61.3 63.4 65.3 66.4 68.4 70.3 72.4 73.4 75.4 76.4 78.0 79.0 81.4 82.4 84.4 85.4 87.4 88.4 90.4 91.4 93.4 94.7 95.7 100.3 101.3 102.3 106.4 107.3
  SAY #21507 /* ~The dabus waits.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23101 /* ~"Who are you?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #23102 /* ~"Who are you?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23103 /* ~"What is this place?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23104 /* ~"What is this place?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Work","GLOBAL",1)
~ GOTO 19
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23105 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #23106 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23107 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23108 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64390 /* ~"What lies beyond that curtain, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64391 /* ~"What lies beyond that curtain, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64392 /* ~"What are those frames in the back room, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64393 /* ~"What are those frames in the back room, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 82
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23109 /* ~"You say you've met me before, Fell... do you know how I died?"~ */ DO ~FloatRebus(Myself)
~ GOTO 72
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #23110 /* ~"You say you've met me before, Fell... do you know how I died?"~ */ DO ~FloatRebus(Myself)
~ GOTO 73
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23111 /* ~"Fell, do you know of Ravel?"~ */ DO ~FloatRebus(Myself)
~ GOTO 32
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23112 /* ~"Fell, do you know of Ravel?"~ */ DO ~FloatRebus(Myself)
~ GOTO 33
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23113 /* ~"Did you do the tattoos on this dismembered arm I found, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 53
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23114 /* ~"Did you do the tattoos on this dismembered arm I found, Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 54
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23115 /* ~"Can you tell me anything about these tattoos on my body?"~ */ DO ~FloatRebus(Myself)
~ GOTO 65
  IF ~  GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23116 /* ~"Can you tell me anything about these tattoos on my body?"~ */ DO ~FloatRebus(Myself)
~ GOTO 66
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #23117 /* ~"Can I see what tattoos you have?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #23118 /* ~"Can I see what tattoos you have?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #23119 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #21508 /* ~The dabus inclines his head slightly, and a lone symbol appears above his head. It is blurry at first, then resolves into a white oval with a black lightning bolt through it.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23120 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23121 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23122 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #21509 /* ~The dabus inclines his head slightly, and a lone symbol appears above his head. It is blurry at first, then resolves into a white oval with a black lightning bolt through it. For some reason, you know the dabus has a name... its name is 'Fell.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23123 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23124 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23125 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23126 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 21
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23127 /* ~"I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23128 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #21510 /* ~As you are about to ask, you suddenly realize you already know the dabus' name - his name is 'Fell.' As if in response, the dabus inclines his head slightly, and a lone symbol appears above its head. It is blurry at first, then resolves into a white oval with a black lightning bolt through it. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23129 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 132
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23130 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 78
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23131 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 16
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23132 /* ~"I feel like I know you, Fell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell","GLOBAL",2)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23133 /* ~"I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23134 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #21511 /* ~A slow train of symbols materialize around Fell's head... the symbols take several moments to resolve, starting with simple lines, then fleshing themselves out into breath-taking colors. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23135 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23136 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23137 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
END

IF ~~ THEN BEGIN 18 // from: 13.2
  SAY #21512 /* ~A slow train of symbols materialize around Fell's head... the symbols take several moments to resolve, starting with simple lines, then fleshing themselves out into breath-taking colors. You're guessing at some of the symbols, but you think he's an artist... and this is a tattoo parlor.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23138 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23139 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23140 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23141 /* ~"Can I see what tattoos you have?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23142 /* ~"I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23143 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.3
  SAY #21513 /* ~A slow train of symbols materialize around Fell's head... the symbols take several moments to resolve, starting with simple lines, then fleshing themselves out into breath-taking colors. (This is where I tattoo color and life upon flesh and bone.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23144 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 133
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23145 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 79
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23146 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 17
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23147 /* ~"Can I see what tattoos you have?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23148 /* ~"I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23149 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #21514 /* ~Fell bows reverently, and a stream of symbols swirl about his head, rotating clockwise, then counterclockwise. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23150 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23151 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23152 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
END

IF ~~ THEN BEGIN 21 // from: 13.4 13.6 15.3
  SAY #21515 /* ~Fell bows reverently, and a stream of symbols swirl about his head, rotating clockwise, then counterclockwise. You have to guess at some of the symbols, but you think he said something about this not being the first time you have come to this place.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23153 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23154 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23155 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23156 /* ~"Do you know who I am?"~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23157 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23158 /* ~"I don't want to hear any more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.5 13.7 16.3 54.4
  SAY #21516 /* ~Fell bows reverently, and a stream of symbols swirl about his head, rotating clockwise, then counterclockwise. It takes you a moment to translate: (This is the first time and not the first time you have come to this place.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #23284 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 134
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #23288 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 80
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #23853 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 18
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23854 /* ~"Do you know who I am?"~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23855 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #23856 /* ~"I don't want to hear any more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #21517 /* ~Another series of symbols materialize quickly and sharply into focus above Fell's head. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24255 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24256 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24257 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
END

IF ~~ THEN BEGIN 24 // from: 21.3
  SAY #21518 /* ~Another series of symbols materialize quickly and sharply into focus above Fell's head. These symbols are not as difficult as the others. You think he said he knows you, but he cannot say anymore than that.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24258 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24259 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24260 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24261 /* ~"Why not?"~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24262 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24263 /* ~"Never mind then - I may return when I get a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.3
  SAY #21519 /* ~Another series of symbols materialize quickly and sharply into focus above Fell's head. The translation comes to you just as quickly and sharply as the symbols themselves... and as if you have translated the exact same string many times before. (Yes. But I am not permitted to tell your story.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24264 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 135
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24265 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 81
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24266 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 19
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24267 /* ~"Why not?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ GOTO 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24268 /* ~"Perhaps you can answer another question for me then..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24269 /* ~"Then there is nothing more to be said. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #21520 /* ~For a moment, there is no response from Fell, then a stream of rebuses appear, as if trickling out of Fell's mind. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24271 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24272 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24273 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DGRACE~ 20
END

IF ~~ THEN BEGIN 27 // from: 24.3
  SAY #21521 /* ~For a moment, there is no response from Fell, then a stream of rebuses appear, as if trickling out of Fell's mind. You think he's saying he's sorry... but you can't translate the rest.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24275 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24276 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24277 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24278 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~~ THEN REPLY #24279 /* ~"Never mind then - I may return when I get a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #21522 /* ~For a moment, there is no response from Fell, then a stream of rebuses appear, as if trickling out of Fell's mind. (My apologies, I cannot. I cannot change the nature of a man.) You can't explain why, but the last sentence sends a crawling sensation through your skull.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24280 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 136
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24281 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 82
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24282 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 20
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24283 /* ~"'Nature of a man'? What does that mean?"~ */ DO ~FloatRebus(Myself)
~ GOTO 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24284 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24285 /* ~"I don't want to hear any more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #21523 /* ~A brief series of paper thin rebuses appear in an orderly row next to Fell, then vanish into glowing motes. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24286 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24287 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24288 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
END

IF ~~ THEN BEGIN 30 // from: 28.3
  SAY #21524 /* ~The symbols that appear above Fell almost mirror the previous stream. (My apologies. I cannot say.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24289 /* ~"I see. I had another question for you, Fell."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24290 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #21525 /* ~There is a long moment of visual silence... it drags out so long that at first, you wonder if Fell heard you. Then a few symbols, strangely gray-colored, appear sluggishly above his head. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24291 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24292 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24293 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
END

IF ~~ THEN BEGIN 32 // from: 13.14
  SAY #21526 /* ~There is a long moment of visual silence... it drags out so long that at first, you wonder if Fell heard you. Then a few symbols, strangely gray-colored, appear sluggishly above his head. He is saying that he has... and that she is not a 'myth.' ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24294 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24295 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24296 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24297 /* ~"Where is she?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24298 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24299 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24300 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24301 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24302 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 13.15
  SAY #21527 /* ~There is a long moment of visual silence... it drags out so long that at first, you wonder if Fell heard you. Then a few symbols, strangely gray-colored, appear sluggishly above his head. (She is not a myth.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24303 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 137
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24304 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 83
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24305 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 21
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24306 /* ~"Where is she?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24307 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24308 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24309 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24310 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24311 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #21528 /* ~A series of gray symbols swirl about Fell's head like a slow-moving whirlpool, then flatten themselves out into a bizarre, twisting pattern. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24312 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24313 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24314 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
END

IF ~~ THEN BEGIN 35 // from: 32.3 41.3
  SAY #21529 /* ~A series of gray symbols swirl about Fell's head like a slow-moving whirlpool, then flatten themselves out into a bizarre, twisting pattern. You think he is saying something about a maze... but he is using the word *maze* as if it was a verb. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24315 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24316 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24317 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24318 /* ~"Mazed?"~ */ DO ~FloatRebus(Myself)
~ GOTO 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24319 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24320 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24321 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24322 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24323 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.3 42.3
  SAY #21530 /* ~A series of gray symbols swirl about Fell's head like a slow-moving whirlpool, then flatten themselves out into a bizarre, twisting pattern. (She is in one of the Lady's mazes.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24324 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 138
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24325 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 84
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24326 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24327 /* ~"Mazes?"~ */ DO ~FloatRebus(Myself)
~ GOTO 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24328 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24329 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24330 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24331 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24332 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #21531 /* ~The next series of symbols march out like a train of slaves carrying a heavy load.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24333 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24334 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24335 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #21532 /* ~The next series of symbols march out like a train of slaves carrying a heavy load. You think he's saying something about 'imprisonment' or 'punishment.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24336 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24337 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24338 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24339 /* ~"She's imprisoned? Do you know how I can reach her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24340 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24341 /* ~"I think I understand enough. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24342 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24343 /* ~"I think I understand enough. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24344 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #21533 /* ~The next series of symbols march out like a train of slaves carrying a heavy load. (Her will was not the will of the Lady. Ravel was punished. Ravel was imprisoned in a maze.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24345 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 139
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24346 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 85
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24347 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 23
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24348 /* ~"What did Ravel do?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24349 /* ~"Do you know how I can reach this maze?"~ */ DO ~FloatRebus(Myself)
~ GOTO 45
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24350 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24351 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24352 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24353 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #21534 /* ~A white oval appears beside Fell, then a sharp crack appears in it. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24354 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24355 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24356 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
END

IF ~~ THEN BEGIN 41 // from: 32.4 33.4 35.4 38.4 44.3
  SAY #21535 /* ~A white oval appears beside Fell, then a sharp crack appears in it. You think he's saying something about 'cracking the cage/city...' but you're not certain. Maybe Ravel tried to crack this city open?~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24357 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24358 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24359 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24360 /* ~"Do you know where she is?"~ */ DO ~FloatRebus(Myself)
~ GOTO 35
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24361 /* ~"I think I understand enough. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24362 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24363 /* ~"I think I understand enough. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24364 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.4 39.3 45.3
  SAY #21536 /* ~A white oval appears beside Fell, then a sharp crack appears in it - instinctively, you recognize the oval as a symbol for this city, Sigil itself. (She sought to open the Cage.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24365 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 140
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24366 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 86
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24367 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 27
  IF ~  Global("AR0610_Visited","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24368 /* ~"Do you know where she is?"~ */ DO ~FloatRebus(Myself)
~ GOTO 36
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24369 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24370 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24371 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24372 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #21537 /* ~Another stream of rebuses trail out from Fell, but these float lower, as if they are carrying a heavy weight. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24373 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24374 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24375 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
END

IF ~~ THEN BEGIN 44 // from: 38.3
  SAY #21538 /* ~Another stream of rebuses trail out from Fell, but these float lower, as if they are carrying a heavy weight. From what you can understand, Fell doesn't seem to know how to reach her... and that one shouldn't try to find her.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24376 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24377 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24378 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24379 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 41
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24380 /* ~"I think I understand enough. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24381 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24382 /* ~"I think I understand enough. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24383 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 39.4
  SAY #21539 /* ~Another stream of rebuses trail out from Fell, but these float lower, as if they are carrying a heavy weight. (I do not know how she might be found. She should not be found. She is in the Lady's keeping.) There is a hard edge to the texture of the symbols in the last sentence, reminding you of dagger blades.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24384 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 141
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24385 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 87
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24386 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 28
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24387 /* ~"What can you tell me about her?"~ */ DO ~FloatRebus(Myself)
~ GOTO 42
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24388 /* ~"I see. I had some other questions..."~ */ DO ~FloatRebus(Myself)
~ GOTO 48
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24389 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24390 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24391 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #21540 /* ~Before you can change the subject, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24392 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24393 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24394 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 47 // from: 32.5 35.5 38.5 41.4 44.4
  SAY #21541 /* ~Before you can change the subject, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. You think he is warning you to leave Ravel alone.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24395 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24396 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24397 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24398 /* ~"I'll keep that in mind. I had some other questions..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24399 /* ~"I may have to find her anyway, Fell. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 33.5 36.5 39.5 42.4 45.4
  SAY #21542 /* ~Before you can change the subject, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. (Do not seek her out. Within her beats an evil heart. She will do everything in her power to hurt you.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24400 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24401 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24402 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24403 /* ~"I'll keep that in mind. I had some other questions..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24404 /* ~"I may have to find her anyway, Fell. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #21543 /* ~Before you can leave, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24405 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24406 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24407 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
END

IF ~~ THEN BEGIN 50 // from: 32.6 35.6 38.6 41.5 44.5
  SAY #21544 /* ~Before you can leave, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. You think he is warning you to leave Ravel alone.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24408 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24409 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24410 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24411 /* ~"I'll keep that in mind. I had some other questions..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24412 /* ~"I may have to find her anyway, Fell. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 33.6 36.6 39.6 42.5 45.5
  SAY #21545 /* ~Before you can leave, a new series of symbols appear around Fell - the structure is that of an 'X' and they pulse like a weak heartbeat. (Do not seek her out. Within her beats an evil heart. She will do everything in her power to hurt you.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24413 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 142
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24414 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 88
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24415 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 29
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24416 /* ~"I'll keep that in mind. I had some other questions..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24417 /* ~"I may have to find her anyway, Fell. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #21546 /* ~Fell examines it for a moment, tracing the patterns with his finger. He then looks up, and a series of rebuses form, hazy at first, then come sharply into focus. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24418 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24419 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24420 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
END

IF ~~ THEN BEGIN 53 // from: 13.16
  SAY #21547 /* ~Fell examines it for a moment, tracing the patterns with his finger. He then looks up, and a series of rebuses form, hazy at first, then come sharply into focus. You think he said the arm is yours, that the tattoos speak of you and four 'others.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24421 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24422 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24423 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24424 /* ~"What four others?"~ */ DO ~FloatRebus(Myself)
~ GOTO 56
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24425 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24426 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 13.17
  SAY #21548 /* ~Fell examines it for a moment, tracing the patterns with his finger. He then looks up, and a series of rebuses form, hazy at first, then come sharply into focus. (The arm is yours. The tattoos are mine. One tattoo speaks of a time when your path was shared by four others.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24427 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 143
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24428 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 89
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24429 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 30
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24430 /* ~"What four others?"~ */ DO ~FloatRebus(Myself)
~ GOTO 57
  IF ~  Global("Translate_Dabus","GLOBAL",0)
GlobalLT("Fell","GLOBAL",2)
~ THEN REPLY #24431 /* ~"The tattoos are yours? Have we met before?"~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24432 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24433 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #21549 /* ~Four strings of symbols swirl from Fell's head, matching the pattern upon the dismembered arm. The four strings float independently for a moment, then form themselves into links, then merge into a chain.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24434 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24435 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
END

IF ~~ THEN BEGIN 56 // from: 53.3
  SAY #21550 /* ~Four strings of symbols swirl from Fell's head, matching the pattern upon the dismembered arm. The symbols are hard to translate, and at the end you're not certain if you've translated them correctly. You think he said, 'an unloved one that loves,' a 'one that sees,' someone 'familiar' and the last, a 'chained one.' As you finish translating, the four strings seem to form themselves into links, and they merge into a chain.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24436 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24437 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24438 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24439 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 54.3
  SAY #21551 /* ~Four strings of symbols swirl from Fell's head, matching the pattern upon the dismembered arm. (They speak of four. Shall I tell you their hearts?)~ */
  IF ~~ THEN REPLY #24440 /* ~"Yes."~ */ DO ~FloatRebus(Myself)
~ JOURNAL #24274 /* ~Fell translated the rune on my old arm for me... he said it spoke of four who once walked my path with me. The four were 'One unloved who loves one who does not love.' 'One who does not see what others see and sees what others do not.' 'One who is familiar and bound with duty.' 'One who is a slave and his chains are words.' He said they were all tormented as I am, and in my suffering, I draw others that suffer as well.~ */ GOTO 59
  IF ~~ THEN REPLY #24441 /* ~"Never mind. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #24442 /* ~"I don't want to know anymore. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #21552 /* ~Fell nods, symbols appearing around him like fireflies. From what you can make out, he says the ones on your back were done carefully by hand, and were directions. The one on your shoulder is 'torture' or 'torment.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24444 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24445 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24446 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #21553 /* ~The symbols swirl before you, and you piece them together:

(One unloved who loves one who does not love.)

(One who does not see what others see and sees what others do not.)

(One who is familiar and bound with duty.)

(One who is a slave and his chains are words.) 

As you finish translating, the four strings seem to form themselves into links, and they merge into a chain... the chain bends until it is a symbol you feel you recognize.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24447 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 97
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24448 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 31
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24449 /* ~"That symbol... what is it?"~ */ DO ~FloatRebus(Myself)
~ GOTO 61
END

IF ~~ THEN BEGIN 60 // from:
  SAY #21554 /* ~The symbol sharpens, gaining edges that are almost painful to your eyes. As it floats there, Fell nods at your left arm, at your shoulder.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24450 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24451 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
END

IF ~~ THEN BEGIN 61 // from: 59.2
  SAY #21555 /* ~The symbol sharpens, gaining edges that are almost painful to your eyes. (It is torment. It is that which draws all tormented souls to you.) Fell nods at your left arm, at your shoulder. (The flesh knows it suffers even when the mind has forgotten. And so you wear the rune always.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24452 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24453 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24454 /* ~"You mentioned that there were other tattoos on the arm? What others?"~ */ DO ~FloatRebus(Myself)
SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24455 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24456 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #21556 /* ~Fell examines the arm again, tracing the other faded tattoos upon its surface. As he does, they each appear as a symbol above his head, hazy at first, then coming into focus sharply. He faces you, then waits.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24457 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24458 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24459 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 63 // from: 61.2
  SAY #21557 /* ~Fell examines the arm again, tracing the other faded tattoos upon its surface. As he does, they each appear as a symbol above his head, hazy at first, then coming into focus sharply. He turns to face you. (Ones forgotten, now remembered. You may wear them again if you wish.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24460 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24461 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24462 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24463 /* ~"I would like to see what these tattoos are... can I see what tattoos you now have to share?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24464 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24465 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #21558 /* ~Fell studies your body for a moment, walking around you. He mirrors each symbol as he examines it, then walks back to face you. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24466 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24467 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24468 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
END

IF ~~ THEN BEGIN 65 // from: 13.18
  SAY #21559 /* ~Fell studies your body for a moment, walking around you. He mirrors each symbol as he examines it, then returns to face you. From what you can make of his floating symbols, he's saying the tattoos are not his.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24469 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24470 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24471 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24472 /* ~"I'll keep that in mind. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24473 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 13.19
  SAY #21560 /* ~Fell studies your body for a moment, walking around you. He mirrors each symbol as he examines it, then returns to face you. (I know them. None are by my hand.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24474 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 145
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24475 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 102
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24476 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 34
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24477 /* ~"Can you tell me about some of them?"~ */ DO ~FloatRebus(Myself)
~ GOTO 68
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24478 /* ~"I'll keep that in mind. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24479 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #21561 /* ~Fell nods, symbols appearing around him like fireflies. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24480 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24481 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24482 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 68 // from: 66.3
  SAY #21562 /* ~Fell nods, symbols appearing around him like fireflies. (The ones upon your back were scribed with a careful hand and are directions for a mind that forgets itself. The symbol that lies upon your left shoulder is the mark of torment.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24483 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24484 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24485 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24486 /* ~"Torment?"~ */ DO ~FloatRebus(Myself)
~ GOTO 70
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24487 /* ~"I'll keep that in mind. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24488 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #21563 /* ~The symbol sharpens, gaining edges that are almost painful to your eyes. Fell nods at your left arm, at your shoulder. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24489 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24490 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24491 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
END

IF ~~ THEN BEGIN 70 // from: 68.3
  SAY #21564 /* ~The symbol sharpens, gaining edges that are almost painful to your eyes. (It is *torment.* It is that which draws all tormented souls to you.) Fell nods at your left arm, at your shoulder. (The flesh knows it suffers even when the mind has forgotten. And so you wear the rune always.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24492 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24493 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 103
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24494 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 35
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24495 /* ~"I'll keep that in mind. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24496 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #21565 /* ~Fell does not respond for a moment... then slowly, menacingly, three symbols materialize above his head, each of them casting a long shadow. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24497 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24498 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24499 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
END

IF ~~ THEN BEGIN 72 // from: 13.12
  SAY #21566 /* ~Fell does not respond for a moment... then slowly, menacingly, three symbols materialize above his head, each of them casting a long shadow. You think he's saying something about... shadows.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24500 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24501 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24502 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24503 /* ~"Shadows?"~ */ DO ~FloatRebus(Myself)
~ GOTO 75
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24504 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24505 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 13.13
  SAY #21567 /* ~Fell does not respond for a moment... then slowly, menacingly, three symbols materialize above his head, each of them casting a long shadow. (Shadows.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24506 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 147
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24507 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 104
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24508 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 36
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24509 /* ~"Shadows?"~ */ DO ~FloatRebus(Myself)
~ GOTO 76
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24510 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24511 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #21568 /* ~The three symbols swirl about each other, each leaving a faint black misty trail about them. They take on a ragged edge, like teeth and talons and *multiply.* Three split into three, then into three again, until the entire room seems covered by a swarm of shadows.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24512 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24513 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24514 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
END

IF ~~ THEN BEGIN 75 // from: 72.3
  SAY #21569 /* ~The three symbols swirl about each other, each leaving a faint black misty trail about them. They take on a ragged edge, like teeth and talons and *multiply.* Three split into three, then into three again, until the entire room seems covered by a swarm of shadows. He seems to be saying that you were killed by many... 'shadows.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24515 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24516 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24517 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24518 /* ~"Why?"~ */ DO ~FloatRebus(Myself)
~ GOTO 78
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24519 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24520 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 73.3
  SAY #21570 /* ~The three symbols swirl about each other, each leaving a faint black misty trail about them. They take on a ragged edge, like teeth and talons and *multiply*... where there were three, there is nine, nine becomes twenty-seven, until the room is a swarm of shadows. (Many shadows. They streamed from the darkness, swarmed you, then left you to die.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24521 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 148
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24522 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 105
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24523 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 37
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24524 /* ~"Why?"~ */ DO ~FloatRebus(Myself)
~ GOTO 79
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24525 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24526 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #21571 /* ~Fell examines the arm again, tracing the other faded tattoos upon its surface. As he does, they each appear as a symbol above his head, hazy at first, then coming into focus sharply. He turns to face you. If you're translating the symbol correctly, he's saying that he forgot these tattoos, but he remembers them now. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24527 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 144
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24528 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 101
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24529 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 33
END

IF ~~ THEN BEGIN 78 // from: 75.3
  SAY #21572 /* ~The shadowed symbols swirl into one, then dissolve, to be replaced with a simple symbol. Fell doesn't seem to know why.~ */
  IF ~~ THEN REPLY #24530 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #24531 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 76.3
  SAY #21573 /* ~The shadowed symbols swirl into one, then dissolve, to be replaced with a simple symbol. (I do not know.)~ */
  IF ~~ THEN REPLY #24532 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #24533 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #21574 /* ~A caravan train of symbols slowly materialize around Fell, one by one.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24534 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24535 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24536 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
END

IF ~~ THEN BEGIN 81 // from: 13.8 13.10
  SAY #21575 /* ~A caravan train of symbols slowly materialize around Fell, one by one. You think he is saying it is a gallery of some sort... a gallery of 'you.' The next part is difficult to translate, but you think that Fell is saying he is... sad for you.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24537 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24538 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24539 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24540 /* ~"Sad? Why?"~ */ DO ~FloatRebus(Myself)
~ GOTO 84
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24541 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24542 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 13.9 13.11
  SAY #21576 /* ~A caravan train of symbols slowly materialize around Fell, one by one. (It is my gallery. Your discarded skins are my canvas. I admire you. I am saddened for you.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24543 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 149
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24544 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 106
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24545 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 38
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24546 /* ~"Saddened for me? Why?"~ */ DO ~FloatRebus(Myself)
~ GOTO 85
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24547 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24548 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #21577 /* ~Another caravan of symbols forms around Fell, this time forming a circle. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24549 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24550 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24551 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
END

IF ~~ THEN BEGIN 84 // from: 81.3
  SAY #21578 /* ~Another caravan of symbols forms around Fell, this time forming a circle. He says something about you being 'marked' and tormented. There's another section you cannot translate, then the last portion seems to be something about you enduring pain.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24552 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24553 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24554 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24555 /* ~"What do you mean?"~ */ DO ~FloatRebus(Myself)
~ GOTO 87
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24556 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24557 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 82.3
  SAY #21579 /* ~Another caravan of symbols forms around Fell, this time forming a circle. (The mark of torment lies upon your flesh. Tragedies and loss have built themselves upon it, like stones upon a foundation. You have endured great pain.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24558 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 150
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24559 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 107
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24560 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 39
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24561 /* ~"What do you mean?"~ */ DO ~FloatRebus(Myself)
~ GOTO 88
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24562 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24563 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #21580 /* ~A long string of rebuses appears above Fell's head, then surrounds his arms like manacles. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24586 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24587 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24588 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
END

IF ~~ THEN BEGIN 87 // from: 84.3
  SAY #21581 /* ~A long string of rebuses appears above Fell's head, then surrounds his arms like manacles. He seems to be saying he admires you for enduring 'losses.' ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24589 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24590 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24591 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24592 /* ~"Go on..."~ */ DO ~FloatRebus(Myself)
~ GOTO 90
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24593 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24594 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 85.3
  SAY #21582 /* ~A long string of rebuses appears above Fell's head, then surrounds his arms like manacles. (I admire you because you have never surrendered to the weight of these losses, despite the fact their chains hang on you still.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24595 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 151
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24596 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 108
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24597 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 40
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24598 /* ~"Go on..."~ */ DO ~FloatRebus(Myself)
~ GOTO 91
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24599 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24600 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #21583 /* ~A long string of rebuses appears above Fell's head, then falls, covering him like a cloak. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24601 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24602 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24603 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
END

IF ~~ THEN BEGIN 90 // from: 87.3
  SAY #21584 /* ~A long string of rebuses appears above Fell's head, then falls, covering him like a cloak. He seems to be saying these 'losses' cover your life... and your 'other lives.' You're not certain what the other symbols surrounding this message mean, however. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24604 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24605 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24606 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24607 /* ~"Uh... is there anything else you can tell me?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24608 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24609 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 88.3
  SAY #21585 /* ~A long string of rebuses appears above Fell's head, then falls, covering him like a cloak. (These losses blanket this life and all of your past ones. You shed lives like a molting serpent. You are exploring the infinite paths of life.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24610 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 153
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24611 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 109
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24612 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24613 /* ~"Tell me more."~ */ DO ~FloatRebus(Myself)
~ GOTO 93
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24614 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24615 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #21586 /* ~A long string of rebuses appears above Fell's head, then falls suddenly to the floor, streaming out behind him like a shadow. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24616 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24617 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24618 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
END

IF ~~ THEN BEGIN 93 // from: 91.3
  SAY #21587 /* ~A long string of rebuses appears above Fell's head, then falls suddenly to the floor, streaming out behind him like a shadow. (Take with you this warning: each of your lives casts a shadow on existence. You must travel to a place where these shadows have gone mad and regrets have scarred the earth.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24619 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24620 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24621 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24622 /* ~"Is there anything else you can tell me?"~ */ DO ~FloatRebus(Myself)
~ GOTO 95
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24623 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24624 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 90.3 106.3
  SAY #21588 /* ~A brief series of paper thin rebuses appear in an orderly row next to Fell, then vanish into glowing motes. You think he just warned you not to 'sign' anything during your travels.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24625 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24626 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24627 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24628 /* ~"Very well."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24629 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24630 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24631 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 97
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24632 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24633 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.3
  SAY #21589 /* ~A brief series of paper thin rebuses appear in an orderly row next to Fell, then vanish into glowing motes. (Do not sign anything.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24634 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 155
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24635 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 111
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24636 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 43
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24637 /* ~"Very well."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24638 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24639 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24640 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ DO ~FloatRebus(Myself)
~ GOTO 98
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24641 /* ~"I see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24642 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #21590 /* ~Another series of rebuses appear, forming a spiral - they have the texture of a question about them. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24643 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24644 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24645 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
END

IF ~~ THEN BEGIN 97 // from: 94.3 94.4 94.5 94.6
  SAY #21591 /* ~Another series of rebuses appear, forming a spiral - they have the texture of a question about them. You think he just asked you if you feel... 'whole.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24646 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24647 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24648 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24649 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 100
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24650 /* ~"That is none of your concern."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24651 /* ~Lie: "I feel complete, yes. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24652 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 95.3 95.4 95.5 95.6
  SAY #21592 /* ~Another series of rebuses appear, forming a spiral - they have the texture of a question about them. (Do you feel complete?)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24653 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 156
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24654 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 112
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24655 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24656 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~FloatRebus(Myself)
IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ GOTO 101
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24657 /* ~"That is none of your concern."~ */ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24658 /* ~Lie: "I feel complete, yes. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ GOTO 102
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24659 /* ~"I do not wish to discuss this any longer. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #21593 /* ~Fell nods, and a series of symbols materialize in a halo around him.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24660 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24661 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24662 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
END

IF ~~ THEN BEGIN 100 // from: 97.3
  SAY #21594 /* ~Fell nods, and a series of symbols materialize in a halo around him. You think he is telling you to 'be strong.' To 'keep faith.'~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24663 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24664 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24665 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24666 /* ~"I'll try. I had some other questions..."~ */ GOTO 13
  IF ~~ THEN REPLY #24667 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 98.3
  SAY #21595 /* ~Fell nods, and a series of symbols materialize in a halo around him. (You are strong. Keep faith, and you shall become whole again.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24668 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 157
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24669 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 113
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24670 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 45
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24671 /* ~"I'll try. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24672 /* ~"Thanks, Fell. I may return later when I have some other questions. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 97.4 97.5 98.4 98.5
  SAY #21596 /* ~Fell makes no response.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24673 /* ~"Fine, never mind then. I had some other questions..."~ */ EXTERN ~DANNAH~ 131
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24674 /* ~"Fine, never mind then. I had some other questions..."~ */ EXTERN ~DDAKKON~ 77
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24675 /* ~"Fine, never mind then. I had some other questions..."~ */ EXTERN ~DGRACE~ 15
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24676 /* ~"Fine, never mind then. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24677 /* ~"I must take my leave. Farewell."~ */ EXIT
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24678 /* ~"I must take my leave. Farewell."~ */ GOTO 103
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24679 /* ~"I must take my leave. Farewell."~ */ GOTO 104
  IF ~  Global("Translate_Dabus","GLOBAL",1)
Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24680 /* ~"I must take my leave. Farewell."~ */ GOTO 105
END

IF ~~ THEN BEGIN 103 // from: 102.5
  SAY #21597 /* ~Suddenly, Fell turns to Annah, and a small string of rebuses materialize above his left shoulder.~ */
  IF ~~ THEN REPLY #24681 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 104 // from: 102.6
  SAY #21598 /* ~Suddenly, Fell turns to Annah, and a small string of rebuses materialize above his left shoulder. You can barely make them out... you think he saying something about the heart and Annah, but you're not sure what... they float there only briefly, then vanish.~ */
  IF ~~ THEN REPLY #24682 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 105 // from: 102.7
  SAY #21599 /* ~Suddenly, Fell turns to Annah, and a small string of rebuses materialize above his left shoulder. You can barely make them out: (Do not surrender your heart.)~ */
  IF ~~ THEN REPLY #24683 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 158
END

IF ~~ THEN BEGIN 106 // from:
  SAY #21600 /* ~A long string of rebuses appear above Fell's head, then fall suddenly to the floor, streaming out behind him like a shadow. You think he's warning you of... shadows. There's something about a place of regrets, but the meaning of the symbols are unclear.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24684 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 154
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24685 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 110
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24686 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24687 /* ~"Is there anything else you can tell me?"~ */ DO ~FloatRebus(Myself)
~ GOTO 94
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24688 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24689 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #21601 /* ~The symbol sharpens, gaining edges that are almost painful to your eyes. Fell nods at your left arm, at your shoulder. From what you can make up, he is saying the mark on your shoulder is "torment." The next series of symbols seem to hint at suffering, even when forgotten.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #24690 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 159
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #24691 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 99
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #24692 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 32
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24693 /* ~"I... see. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Translate_Dabus","GLOBAL",0)
~ THEN REPLY #24694 /* ~"I'll have to come back when I can find a better translator. Farewell."~ */ EXIT
END
