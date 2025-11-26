// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DADABUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50108 /* ~You see a tall creature with a shock of white hair. Its skin has a greenish cast, and a pair of goat horns protrudes from its forehead. It is dressed in long flowing robes and appears to be floating slightly above the ground.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50109 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #50303 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50318 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #50330 /* ~Leave the creature in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50110 /* ~The creature turns to face you and a series of symbols appear around its head. The symbols have a slight glow about them, and they just... hover there.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 235
END

IF ~~ THEN BEGIN 2 // from:
  SAY #50119 /* ~The dabus waits patiently, its hands tucked into its sleeves. A series of symbols materialize above its head, then they vanish and a question mark appears.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50120 /* ~Try and strike up a conversation, see if you can translate what the dabus is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50259 /* ~Try and strike up a conversation, see if you can translate what the dabus is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50260 /* ~Try and speak to the dabus, see if you can understand it.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50290 /* ~"I had some questions for you..."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50291 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50292 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50293 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50294 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50295 /* ~"Annah, can you translate what he's saying for me?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50296 /* ~"Dak'kon, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50297 /* ~"Fall-from-Grace, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50298 /* ~"I'm sorry, I don't understand you."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~~ THEN REPLY #50299 /* ~"Uh... farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1 20.0 20.1
  SAY #50121 /* ~You ask the dabus several questions, trying to get a feel for the rebuses that appear above its head. It is extremely patient throughout your 'discussion,' giving you easy sentences to translate. After a few minutes, you start to get the hang of it... it feels like you've done this before.~ */
  IF ~~ THEN REPLY #50122 /* ~"Maybe you can help me..."~ */ GOTO 4
  IF ~~ THEN REPLY #50258 /* ~"Just wanted to brush up on my rebuses. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.3 3.0 5.0 7.0 8.0 9.0 10.2 20.3
  SAY #50123 /* ~The dabus waits.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50124 /* ~"Who are you?"~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50130 /* ~"What are you doing?"~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50135 /* ~"Who are you?"~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50139 /* ~"What are you doing?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #50144 /* ~"Can you tell me about the Lady of Pain?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #50256 /* ~"Can you tell me about Fell?"~ */ DO ~FloatRebus(Myself)
~ GOTO 17
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #50257 /* ~"Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #50125 /* ~The dabus inclines his head slightly, and a stream of symbols appears above his head. You think he's saying he's a dabus.~ */
  IF ~~ THEN REPLY #50126 /* ~"I had another question for you."~ */ GOTO 4
  IF ~~ THEN REPLY #50127 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.12 3.1 4.8 5.1 7.1 7.2 8.1 9.1 9.2 10.3 18.10 20.16
  SAY #50128 /* ~The dabus bows slightly. Symbols swirl around its head, then it turns away.~ */
  IF ~~ THEN REPLY #50129 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #50131 /* ~A batch of symbols appears above the dabus' head. You think he's saying he's attending to his duty... or duties. ~ */
  IF ~~ THEN REPLY #50132 /* ~"I had another question for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #50133 /* ~"Very descriptive. Thanks. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50134 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #50136 /* ~The dabus inclines his head slightly, and a stream of symbols appears above his head. (I am a dabus.)~ */
  IF ~~ THEN REPLY #50137 /* ~"I had another question for you."~ */ GOTO 4
  IF ~~ THEN REPLY #50138 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 4.3
  SAY #50140 /* ~A batch of symbols appears above the dabus' head. (I attend to my duties.)~ */
  IF ~~ THEN REPLY #50141 /* ~"I had another question for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #50142 /* ~"Very descriptive. Thanks. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #50143 /* ~"That is all I wished to know. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 4.4
  SAY #50145 /* ~A lone symbol appears above the dabus' head. This one shows a metallic female mask, with blades coming out of the sides. Just looking at the ghostly image makes you uncomfortable.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50146 /* ~"Uh... not quite the answer I was expecting."~ */ EXTERN ~DGRACE~ 146
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50253 /* ~"Uh... I see. Dak'kon, can you ask it another question?"~ */ EXTERN ~DDAKKON~ 165
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50254 /* ~"Uh... I had another question for you..."~ */ GOTO 4
  IF ~~ THEN REPLY #50255 /* ~"Uh... that's all I wanted to know. Farewell."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from:
  SAY #50151 /* ~The dabus inclines his head slightly, and a stream of symbols appears above his head. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50152 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50236 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50237 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50238 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50158 /* ~The dabus inclines his head slightly, and a stream of symbols appears above his head. You think he's saying he's a dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50159 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50160 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50167 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50212 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50174 /* ~The dabus inclines his head slightly, and a stream of symbols appears above his head. (I am a dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #50175 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 239
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #50176 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 241
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50177 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 164
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50178 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 148
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50183 /* ~A batch of symbols appears above the dabus' head. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50184 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50188 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50192 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50197 /* ~A batch of symbols appears above the dabus' head. You think he's saying he's attending to his duty... or duties. ~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50198 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50199 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50200 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 16 // from:
  SAY #50202 /* ~A batch of symbols appears above the dabus' head. (I attend to my duties.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #50203 /* ~"What did he say, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 243
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #50204 /* ~"What did he say, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 166
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #50205 /* ~"What did he say, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 149
END

IF ~~ THEN BEGIN 17 // from: 4.5
  SAY #50208 /* ~A lone symbol appears over the dabus' head. It is a white oval split by a black lightning bolt. The dabus floats the symbol for a few seconds, then turns away, ignoring you.~ */
  IF ~~ THEN REPLY #50209 /* ~"Uh... farewell then."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2 20.2
  SAY #50261 /* ~You ask the dabus several questions, trying to get a feel for the rebuses that appear above its head. Although it is extremely patient throughout your 'discussion,' you can't seem to get the hang of it. Eventually, the dabus stops floating symbols and simply waits.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50262 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50265 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50268 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50271 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50274 /* ~"Annah, can you translate what he's saying for me?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50284 /* ~"Dak'kon, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50285 /* ~"Fall-from-Grace, can you translate what he's saying for me?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50286 /* ~"I'm sorry, I don't understand you."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #50289 /* ~"Uh... farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 2.11 18.7 20.6
  SAY #50287 /* ~A series of symbols appear above the dabus' head. It then bows and turns away.~ */
  IF ~~ THEN REPLY #50288 /* ~"Uh... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.1 22.0
  SAY #50304 /* ~It turns to face you, and a series of symbols appear around its head. The symbols have a slight glow about them, and they just... hover there.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50305 /* ~Try and strike up a conversation, see if you can translate what the creature is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50306 /* ~Try and strike up a conversation, see if you can translate what the creature is saying.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50307 /* ~Try and speak to it, see if you can understand it.~ */ DO ~FloatRebus(Myself)
~ GOTO 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50308 /* ~"I had some questions for you..."~ */ GOTO 4
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50309 /* ~"I'm sorry... I can't understand you."~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #50310 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 492
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #50311 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 493
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #50312 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 494
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #50313 /* ~"Morte, can you translate what he's saying for me?"~ */ EXTERN ~DMORTE~ 495
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50314 /* ~"Annah, can you translate what he's saying for me?"~ */ EXTERN ~DANNAH~ 248
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50315 /* ~"Dak'kon, can you translate what it's saying?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 165
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50316 /* ~"Fall-from-Grace, can you translate what he's saying?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 147
  IF ~~ THEN REPLY #50317 /* ~"Never mind. Sorry to disturb you. Farewell."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 0.2
  SAY #50319 /* ~The creature turns to face you and a series of symbols appear around its head. The symbols have a slight glow about them, and they just... hover there.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 496
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 22 // from:
  SAY #50331 /* ~You see a dabus. It is dressed in long flowing robes and is floating slightly above the ground.~ */
  IF ~~ THEN REPLY #50332 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #50333 /* ~Leave the dabus in peace.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Pregnant_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #50334 /* ~You see a dabus. It is dressed in long flowing robes and is floating slightly above the ground.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50340 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #50341 /* ~"Greetings."~ */ DO ~FloatRebus(Myself)
~ GOTO 24
  IF ~~ THEN REPLY #50342 /* ~Leave the dabus in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #50335 /* ~It turns to face you, and a series of symbols appear around its head. (I must attend to my duties. No time to speak.)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50343 /* ~"I understand. I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61176 /* ~"I understand. I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 25
  IF ~~ THEN REPLY #61177 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.6 4.7 20.4 20.5 24.0 24.1
  SAY #50336 /* ~The Dabus cocks its head slightly to one side. A number of symbols stream above its head, most of which indicate surprise and distress rather than words. (Dead? Where?)~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50345 /* ~Truth: "It lies in the abandoned building not far from here. It looks as though it got trapped inside somehow."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50346 /* ~Lie: "It lies in the abandoned building not far from here. I don't know how it died."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61178 /* ~"It lies in the abandoned building not far from here. I don't know how it died."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2 28.0 28.1 28.2
  SAY #50337 /* ~The Dabus stares at you briefly, then bows slightly and floats off in the direction of the abandoned building.~ */
  IF ~~ THEN REPLY #50347 /* ~"Farewell."~ */ DO ~SetGlobal("Dabus_Trap","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.0
  SAY #50338 /* ~It turns to face you, and a series of symbols appear around its head. The symbols have a slight glow about them, and they just... hover there.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #50348 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #61165 /* ~"Uh... I just thought you should know that I discovered the body of a Dabus in this Alley."~ */ DO ~FloatRebus(Myself)
~ GOTO 28
  IF ~~ THEN REPLY #61169 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 18.8 18.9 20.7 20.8 27.0 27.1
  SAY #50339 /* ~The Dabus cocks its head slightly to one side. A number of symbols stream above its head. Though you can't make out what it's saying, you do take note that the end of the message is punctuated by a brightly flashing question mark.~ */
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50350 /* ~Truth: "It lies in the abandoned building not far from here. It looks as though it got trapped inside somehow."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Adabus_1","GLOBALLaw",1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",2)
~ THEN REPLY #50351 /* ~Lie: "It lies in the abandoned building not far from here. I don't know how it died."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adabus_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Adabus_1","GLOBALGood",-1)
~ GOTO 26
  IF ~  Global("Know_Dead_Dabus","GLOBAL",1)
~ THEN REPLY #61172 /* ~"It lies in the abandoned building not far from here. I don't know how it died."~ */ GOTO 26
END
