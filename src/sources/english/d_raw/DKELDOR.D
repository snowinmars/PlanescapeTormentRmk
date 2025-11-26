// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELDOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELDOR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #47128 /* ~His face is impassive, but there seems to be fury behind his voice. "You have betrayed our ideals. You have no place here. Our guards will escort you out. Will you leave peacefully?"~ */
  IF ~~ THEN REPLY #47129 /* ~"I'd like to apologize and rejoin the Believers of the Source."~ */ GOTO 1
  IF ~~ THEN REPLY #47130 /* ~"I'll leave peacefully."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47131 /* ~"You'll have to drag me out of here."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47132 /* ~"Once you have turned your back on our beliefs, there is no return. You may view this as another test if you wish, but we will not open ourselves to you or aid you on your quest for enlightenment. Now... will you leave peacefully, or will there be blood shed?"~ */
  IF ~~ THEN REPLY #47133 /* ~"I'll leave peacefully."~ */ DO ~TeleportParty("AR0500",[1601.1394],6)
~ EXIT
  IF ~~ THEN REPLY #47134 /* ~"You'll have to drag me out of here."~ */ DO ~Enemy()
Attack(Protagonist)
Help()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 2 // from:
  SAY #47135 /* ~"Greetings, comrade! What can I do for you today?"~ */
  IF ~~ THEN REPLY #47136 /* ~"I'd like to get some healing, if I could."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47137 /* ~"I need to purchase some items."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47138 /* ~"I need a place to rest."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47139 /* ~"I'd like to see the secret project, if I could."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47140 /* ~"I've lost the token to get into the secret project room."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47143 /* ~"Bedai-Lihn has asked me to sabotage the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47144 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47145 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47146 /* ~"Bedai-Lihn has asked me to sabotage the machine. I turned her down, but I thought I ought to tell you."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47147 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47148 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47149 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47150 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47151 /* ~"I have a message for you from Giltspur the auctioneer."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51167 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 9.3
  SAY #47152 /* ~"You have proven yourself trustworthy. Here. Take this." He presses a token emblazoned with the Godsman symbol into your hands. "Do not lose it. If you do, I'm afraid I cannot replace it, so be careful with it. Is there anything else I can do for you?"~ */
  IF ~~ THEN REPLY #47153 /* ~"Yes, I had a few questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #47154 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.4 9.4
  SAY #47155 /* ~"I regret that I cannot give you another. I warned you, did I not, that I could not replace it?" He sighs. "Is there anything else I can do for you?"~ */
  IF ~~ THEN REPLY #47156 /* ~"Answer a few more questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #47157 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 2.9 2.10 2.12 9.5 9.7 9.8 9.9 9.10 9.12
  SAY #47158 /* ~His jovial face becomes both hard and grim. "Is that so. We'll put her into detention, then, and find the truth. And if it's the case... we'll execute her. Excuse me. I have business to attend to."~ */
  IF ~~ THEN REPLY #47159 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #47160 /* ~When he returns, Keldor's face is set. "Your information has apprehended a dangerous criminal. We've scored points with the Harmonium and the Mercykillers for this, and we owe it to you. You have our thanks - and on a personal level, you have my gratitude for proving I was right in believing you to be an excellent choice for a Godsman."~ */
  IF ~~ THEN REPLY #47161 /* ~"No problem. I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #47162 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.6 2.11 9.6 9.11
  SAY #47163 /* ~His jovial face becomes both hard and grim. "Is that so. We'll put her into detention, then, and find the truth. And if it's the case... we'll execute her. Excuse me. I have business to attend to."~ */
  IF ~~ THEN REPLY #47164 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #47165 /* ~When he returns, his face is even more grim. "She's gone. No one saw her slip out, and no one knows where she went. You have my thanks in alerting us to her treachery, though. Rest assured that if she shows her face around here, she's doomed. You have my word on that."~ */
  IF ~~ THEN REPLY #47166 /* ~"I had some questions for you..."~ */ GOTO 9
  IF ~~ THEN REPLY #47167 /* ~"If I see her, I'll make sure of it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.0 6.0 8.0 11.0 55.0
  SAY #47168 /* ~"More questions? What can I do for you?"~ */
  IF ~~ THEN REPLY #47169 /* ~"I'd like to get some healing, if I could."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47170 /* ~"I need to purchase some items."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #47171 /* ~"I need a place to rest."~ */ DO ~StartStore("Keldor",Protagonist)
~ EXIT
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47172 /* ~"I'd like to see the secret project, if I could."~ */ DO ~SetGlobal("Token_K","GLOBAL",1)
GiveItemCreate("Gtoken",Protagonist,1,0,0)
~ GOTO 3
  IF ~  Global("Token_K","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47173 /* ~"I've lost the token to get into the secret project room."~ */ DO ~SetGlobal("Token_K","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47174 /* ~"Bedai-Lihn has asked me to sabotage the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47175 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 7
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47176 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47177 /* ~"Bedai-Lihn has asked me to sabotage the machine. I turned her down, but I thought I ought to tell you."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47178 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47179 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47180 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 7
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47181 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 5
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47182 /* ~"I have a message for you from Giltspur the auctioneer."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ EXIT
  IF ~~ THEN REPLY #51168 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",5)
~ THEN BEGIN 10 // from: 12.12
  SAY #47183 /* ~"Will you accept the oath of the Godsmen, and join us?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47184 /* ~"I will."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47185 /* ~"I will."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47186 /* ~"I will."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66311 /* ~"I will."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66312 /* ~"I will."~ */ GOTO 56
  IF ~~ THEN REPLY #66313 /* ~"Not yet. I had some questions first."~ */ GOTO 12
  IF ~~ THEN REPLY #66314 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 51.0 52.0 56.0 56.1 56.2 56.3 56.4
  SAY #47187 /* ~The oath: "Life's tribulations are tests. There is nothing I encounter that is not a lesson. Pain is the multiverse's way of reinforcing a lesson. What I hate most in others is a reflection of what I hate most in myself. I will act to activate my potential, and to aid others in achieving their goals. I will remember that divinity's spark is present in everything. I swear fealty to the Believers of the Source and their goals, never to forsake them." You swear the oath, and Keldor smiles. "Welcome to the Godsmen, lad. Do you need anything from me now?"~ */
  IF ~~ THEN REPLY #47188 /* ~"I had some questions..."~ */ JOURNAL #46638 /* ~I have joined the Believers of the Source, and am now officially a Godsman. This was my vow: "Life's tribulations are tests. There is nothing I encounter that is not a lesson. Pain is the multiverse's way of reinforcing a lesson. What I hate most in others is a reflection of what I hate most in myself. I will act to activate my potential, and to aid others in achieving their goals. I will remember that divinity's spark is present in everything. I swear fealty to the Believers of the Source and their goals, never to forsake them."~ */ GOTO 9
  IF ~~ THEN REPLY #47189 /* ~"Not right now. Farewell."~ */ JOURNAL #46638 /* ~I have joined the Believers of the Source, and am now officially a Godsman. This was my vow: "Life's tribulations are tests. There is nothing I encounter that is not a lesson. Pain is the multiverse's way of reinforcing a lesson. What I hate most in others is a reflection of what I hate most in myself. I will act to activate my potential, and to aid others in achieving their goals. I will remember that divinity's spark is present in everything. I swear fealty to the Believers of the Source and their goals, never to forsake them."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.5 13.0 14.0 16.0 18.0 19.0 20.2 21.0 22.0 23.1 24.10 25.10 26.0 27.2 28.2 29.2 30.0 31.3 32.1 33.1 34.1 35.1 36.1 37.2 38.1 39.4 43.0 44.0 47.0 50.0 51.5 52.5 53.0 54.0 55.1
  SAY #47190 /* ~"What did you want to know?"~ */
  IF ~~ THEN REPLY #47191 /* ~"Who are you?"~ */ GOTO 23
  IF ~~ THEN REPLY #47192 /* ~"What can you tell me about this place?"~ */ GOTO 20
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47193 /* ~"What are the benefits of joining the Godsmen?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Join_Godsmen","GLOBAL",1)
~ THEN REPLY #47194 /* ~"Tell me more about your faction."~ */ GOTO 25
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47195 /* ~"What can you tell me about your faction?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47196 /* ~"I would like to join the Godsmen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47197 /* ~"I would like to join the Godsmen."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47198 /* ~"I would like to join the Godsmen."~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47199 /* ~"I would like to join the Godsmen."~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",2)
~ THEN REPLY #47200 /* ~"I needed to ask some questions about the forge."~ */ GOTO 39
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #47201 /* ~"I wanted to talk about the murder investigation."~ */ GOTO 44
  IF ~  Global("Join_Godsmen","GLOBAL",4)
~ THEN REPLY #47202 /* ~"I wanted to talk about Sandoz."~ */ GOTO 50
  IF ~  Global("Join_Godsmen","GLOBAL",5)
~ THEN REPLY #47203 /* ~"I'd like to take the Godsman oath."~ */ GOTO 10
  IF ~  Global("Token_K","GLOBAL",0)
!PartyHasItem("Gtoken")
~ THEN REPLY #47204 /* ~"I'd like to see the secret project, if I could."~ */ GOTO 13
  IF ~  Global("Token_A","GLOBAL",1)
!PartyHasItem("Gtoken")
~ THEN REPLY #47205 /* ~"I've lost the token to get into the secret project room."~ */ GOTO 14
  IF ~  GlobalGT("Sabotage","GLOBAL",0)
GlobalLT("Sabotage","GLOBAL",5)
!Global("Smuggle","GLOBAL",6)
~ THEN REPLY #47206 /* ~"Bedai-Lihn has asked me to sabotage the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47207 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 17
  IF ~  GlobalGT("Sabotage","GLOBAL",4)
GlobalLT("Sabotage","GLOBAL",8)
!Global("Sabotage","GLOBAL",6)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47208 /* ~"Bedai-Lihn is the one who destroyed the machine."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  Global("Sabotage","GLOBAL",8)
~ THEN REPLY #47209 /* ~"Bedai-Lihn has asked me to sabotage the machine. I turned her down, but I thought I ought to tell you."~ */ DO ~SetGlobal("Sabotage","GLOBAL",6)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",3)
~ THEN REPLY #47210 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
GlobalLT("F_Ass","GLOBAL",3)
~ THEN REPLY #47211 /* ~"Bedai-Lihn asked me to assassinate Sandoz. I thought you ought to know."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalGT("Smuggle","GLOBAL",5)
~ THEN REPLY #47212 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_1","GLOBALGood",-3)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 17
  IF ~  Global("F_Ass","GLOBAL",4)
GlobalLT("Smuggle","GLOBAL",6)
~ THEN REPLY #47213 /* ~"Bedai-Lihn is the one who assassinated Sandoz."~ */ DO ~SetGlobal("F_Ass","GLOBAL",5)
~ JOURNAL #66513 /* ~I have turned Bedai-Lihn in to Keldor for her Anarchist leanings and attempts to disrupt the Foundry's workings. Keldor was pleased.~ */ GOTO 15
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #51169 /* ~"I have a message for you from Giltspur the auctioneer."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #51170 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.13
  SAY #47215 /* ~He smiles. "Friend, I can't give that to you until you prove yourself a friend of the Godsmen."~ */
  IF ~~ THEN REPLY #47216 /* ~"Then answer a few more questions for me..."~ */ GOTO 12
  IF ~~ THEN REPLY #47217 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.14
  SAY #47218 /* ~"I regret that I cannot give you another." He sighs. "Is there anything else I can do for you?"~ */
  IF ~~ THEN REPLY #47219 /* ~"Answer a few more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47220 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.15 12.17 12.18 12.19 12.20 12.22
  SAY #47221 /* ~His jovial face becomes both hard and grim. "Is that so. We'll put her into detention, then, and find the truth. And if it's the case... we'll execute her. Excuse me. I have business to attend to."~ */
  IF ~~ THEN REPLY #47222 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #47223 /* ~When he returns, Keldor's face is set. "Your information has apprehended a dangerous criminal. We've scored points with the Harmonium and the Mercykillers for this, and we owe it to you. You have our thanks - and on a personal level, you have my gratitude for proving I was right in believing you to be an excellent choice for a Godsman."~ */
  IF ~~ THEN REPLY #47224 /* ~"No problem. I had some questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47225 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.16 12.21
  SAY #47226 /* ~His jovial face becomes both hard and grim. "Is that so. We'll put her into detention, then, and find the truth. And if it's the case... we'll execute her. Excuse me. I have business to attend to."~ */
  IF ~~ THEN REPLY #47227 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #47228 /* ~When he returns, his face is even more grim. "She's gone. No one saw her slip out, and no one knows where she went. You have my thanks in alerting us to her treachery, though. Rest assured that if she shows her face around here, she's doomed. You have my word on that."~ */
  IF ~~ THEN REPLY #47229 /* ~"I had some questions for you..."~ */ GOTO 12
  IF ~~ THEN REPLY #47230 /* ~"If I see her, I'll make sure of it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.2
  SAY #47231 /* ~"In addition to associating with such fine people as we have here," he smiles, "you get nearly unlimited access to the facilities. We have spells, items, places to rest. Some of these are specialized for our faction. Some of them can be found across Sigil. All of them become much cheaper for our members."~ */
  IF ~~ THEN REPLY #47232 /* ~"All right. I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47233 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.1
  SAY #47234 /* ~"This is the Great Foundry, home of the Believers of the Source, also known as the Godsmen. Here we make items that ship all over the planes - we're renowned in many worlds. Only the best work here. It's said that we've got a staff of smiths that rival those in Mount Clangeddin itself. Personally, I don't think we're that good... but we ARE close."~ */
  IF ~~ THEN REPLY #47235 /* ~"Can you take on additional work?"~ */ GOTO 21
  IF ~~ THEN REPLY #47236 /* ~"What can you tell me of the people here?"~ */ GOTO 22
  IF ~~ THEN REPLY #47237 /* ~"I see. I had more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #47238 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #47239 /* ~"Sadly, friend, we cannot. We're engaged in a long-term contract right now that's taking up most of our resources. Perhaps when we've finished... in a matter of years." He shrugs. "My apologies."~ */
  IF ~~ THEN REPLY #47240 /* ~"I had some other questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47241 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #47242 /* ~"We've got a wide range of folks here, most of whom are the smiths and the workers who keep this place running. We've also got a pair of engineers who are doing some incredible things with the fabric of reality. Ask Nihil Xander about his Dreambuilder someday."~ */
  IF ~~ THEN REPLY #47243 /* ~"Maybe I will. I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47244 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.0
  SAY #47245 /* ~He smiles broadly. "My friend, I am Keldor of Durian, one of the factotums of the Godsmen, and nominally in charge of this place while our true high-ups are gone in conclave."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #47246 /* ~"What can you tell me about your faction?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #47247 /* ~"I had some more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47248 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.4 23.0
  SAY #47249 /* ~He smiles, his face creasing in wrinkles. "What would you like to know about us?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47250 /* ~"How do I join?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47251 /* ~"How do I join?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47252 /* ~"How do I join?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47253 /* ~"How do I join?"~ */ GOTO 29
  IF ~~ THEN REPLY #47254 /* ~"What are the beliefs of this faction?"~ */ GOTO 31
  IF ~~ THEN REPLY #47255 /* ~"Tell me of the faction's history."~ */ GOTO 32
  IF ~~ THEN REPLY #47256 /* ~"What do I get for being in the faction?"~ */ GOTO 33
  IF ~~ THEN REPLY #47257 /* ~"Who are the faction's enemies?"~ */ GOTO 34
  IF ~~ THEN REPLY #47258 /* ~"What do you do, anyway?"~ */ GOTO 35
  IF ~~ THEN REPLY #47259 /* ~"Why are you named as you are?"~ */ GOTO 36
  IF ~~ THEN REPLY #47260 /* ~"Nothing, right now. I had more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47261 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 12.3 27.1 28.1 29.1 31.2 32.0 33.0 34.0 35.0 36.0 37.1 38.0
  SAY #47262 /* ~"Gladly. What did you want to know?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Join_Godsmen","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47263 /* ~"How do I join?"~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #47264 /* ~"How do I join?"~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #47265 /* ~"How do I join?"~ */ GOTO 28
  IF ~  Global("Join_Godsmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #47266 /* ~"How do I join?"~ */ GOTO 29
  IF ~~ THEN REPLY #47267 /* ~"What are the beliefs of this faction?"~ */ GOTO 31
  IF ~~ THEN REPLY #47268 /* ~"Tell me of the faction's history."~ */ GOTO 32
  IF ~~ THEN REPLY #47269 /* ~"What do I get for being in the faction?"~ */ GOTO 33
  IF ~~ THEN REPLY #47270 /* ~"Who are the faction's enemies?"~ */ GOTO 34
  IF ~~ THEN REPLY #47271 /* ~"What do you do, anyway?"~ */ GOTO 35
  IF ~~ THEN REPLY #47272 /* ~"Why are you named as you are?"~ */ GOTO 36
  IF ~~ THEN REPLY #47273 /* ~"Nothing, right now. I had more questions..."~ */ GOTO 12
  IF ~~ THEN REPLY #47274 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 12.5 24.0 25.0 27.0 28.0 29.0
  SAY #47275 /* ~"If you wish to join the Believers of the Source, you must complete three quests. The first quest is this: You must go to the forge, and create an item. This will show that you are capable of seeing the possibilities inherent in even a base lump of iron; that you are capable of bringing forth something that will stand the test of time. It measures your vision and your ability to make the potential actual. Talk to Alissa, the Foundry Supervisor, in the Main Foundry to see how it all works."~ */
  IF ~~ THEN REPLY #47276 /* ~"I had some other questions..."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~I'm on my way to becoming a Godsman. I am to find a smith in the Great Foundry and he'll tell me how to work the forge so that I can create an item. I am to do this to prove that I can see potential even in a cold lump of rock. Shouldn't be hard. I am to return to him when I'm done. ~ */ GOTO 12
  IF ~~ THEN REPLY #47277 /* ~"I'll get on it. Farewell."~ */ DO ~SetGlobal("G_Test1","GLOBAL",1)
~ JOURNAL #39502 /* ~I'm on my way to becoming a Godsman. I am to find a smith in the Great Foundry and he'll tell me how to work the forge so that I can create an item. I am to do this to prove that I can see potential even in a cold lump of rock. Shouldn't be hard. I am to return to him when I'm done. ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.6 24.1 25.1
  SAY #47278 /* ~A sly smile creeps across his face. "Well, first you'll have to renounce your Dustman membership."~ */
  IF ~~ THEN REPLY #47279 /* ~"Very well. I renounce them. What do I have to do?"~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47280 /* ~"I'm not sure I'm ready to do that. Answer some more questions about your faction for me, will you?"~ */ GOTO 25
  IF ~~ THEN REPLY #47281 /* ~"Not yet. I had some other questions, not about your faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47282 /* ~"Not yet, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 12.7 24.2 25.2
  SAY #47283 /* ~A sly smile creeps across his face. "Well, first you'll have to renounce your Sensate membership."~ */
  IF ~~ THEN REPLY #47284 /* ~"Very well. I renounce them. What do I have to do?"~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47285 /* ~"I'm not sure I'm ready to do that. Answer some more questions about your faction for me, will you?"~ */ GOTO 25
  IF ~~ THEN REPLY #47286 /* ~"Not yet. I had some other questions, not about your faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47287 /* ~"Not yet, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 12.8 24.3 25.3
  SAY #47288 /* ~A sly smile creeps across his face. "Well, first you'll have to renounce your Xaositect membership."~ */
  IF ~~ THEN REPLY #47289 /* ~"Very well. I renounce them. What do I have to do?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Godsmen","GLOBAL",2)
~ GOTO 26
  IF ~~ THEN REPLY #47290 /* ~"I'm not sure I'm ready to do that. Answer some more questions about your faction for me, will you?"~ */ GOTO 25
  IF ~~ THEN REPLY #47291 /* ~"Not yet. I had some other questions, not about your faction."~ */ GOTO 12
  IF ~~ THEN REPLY #47292 /* ~"Not yet, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 39.0
  SAY #47293 /* ~"Any of the smiths there should be able to help you out."~ */
  IF ~~ THEN REPLY #47294 /* ~"Very well. I had some additional questions."~ */ GOTO 12
  IF ~~ THEN REPLY #47295 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 24.4 25.4
  SAY #47296 /* ~"We believe that the universe is a giant testing ground, a place where we prove ourselves through a series of tests. These tests continue throughout your life, throughout your many lives. Each step in each day may well be a test for you, and your reward in the next life depends on how well you learn your lessons in this life. We believe that a body learns from experience... and that experience extends through your lives, making you into something greater than just a single life."~ */
  IF ~~ THEN REPLY #47297 /* ~"So what's the point of it all?"~ */ GOTO 37
  IF ~~ THEN REPLY #47298 /* ~"Makes sense so far. Keep going."~ */ GOTO 38
  IF ~~ THEN REPLY #47299 /* ~"All right... more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47300 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47301 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 24.5 25.5
  SAY #47302 /* ~"It's commonly believed that we were founded by Perrine, before the Great Upheaval, when all the factions became fifteen in number. During the Upheaval, Augy of Faunel tightened the faction's beliefs into what they are today - she had been reincarnated a thousand times, and could remember *each one* of her reincarnations. She taught us how to treat our intuition, and led us to a new era. These two were the most important figures in our faction - we have plenty more stories, but those are the bare bones."~ */
  IF ~~ THEN REPLY #47303 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47304 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47305 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.6 25.6
  SAY #47306 /* ~"Well, aside from access to our excellent foundry, room and board for you and your friends, special items and spells, and a more favorable reaction from most folks you'll meet on the street, there's not much to recommend us. Of course, if you're planning on being with us merely for the benefits, I'd have to counsel against it."~ */
  IF ~~ THEN REPLY #47331 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47332 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47333 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 24.7 25.7
  SAY #47334 /* ~"We don't have enemies, per se. Still, there are some who oppose our beliefs. The Bleak Cabal scoff at the idea that we evolve toward something more perfect. I figure that if they don't think there's a point, they might as well get it over with... like the Dustmen ought to. The Dustmen think that life is an illusion, preparing for the Big Death, and our belief champions the cause of life. They promote death, we celebrate life. What could be more opposed?"~ */
  IF ~~ THEN REPLY #47335 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47336 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47337 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 24.8 25.8
  SAY #47338 /* ~"Well, we run the Great Foundry. We also run Harbinger House, where we train folks who seem to be powers-in-training... bashers who've demonstrated some sort of special ability that sets them apart from normal mortals. Some say we do it because we want a power on our side, but the truth is, we do it because we figure that's part of our tests as well. We do our best to make sure every creature faces up to its responsibilities - we want to see the multiverse move on."~ */
  IF ~~ THEN REPLY #47339 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47340 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47341 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 24.9 25.9
  SAY #47342 /* ~"That's a good question. Our real name is the Believers of the Source, because we believe all life springs from a pure, primal source. But because we believe that all creatures have the potential for godliness within them, it's only natural that our nickname would be the Godsmen."~ */
  IF ~~ THEN REPLY #47343 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47344 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47345 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.0
  SAY #47346 /* ~"We're not entirely sure. After all, we haven't gotten to the end of it yet, have we? The best we can figure is that we muddle through our lives, seeking to find the answers that are right for us, and in the end, we move on to godhood and beyond. What waits there is anybody's guess."~ */
  IF ~~ THEN REPLY #47347 /* ~"All right. Keep going."~ */ GOTO 38
  IF ~~ THEN REPLY #47348 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47349 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47350 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 31.1 37.0
  SAY #47351 /* ~"So. Life is a test. We take the test. When we pass, we move on to a new form. This might be the form of an archon, of a fiend, or of a power. The choices we make in this life, as always, help chart our course. Whether we have free will or not is still under debate." He smiles. "Of course, I'm on the side of the free will people... I hate thinking that my choices have already been made for me."~ */
  IF ~~ THEN REPLY #47352 /* ~"All right... I had more questions about your faction."~ */ GOTO 25
  IF ~~ THEN REPLY #47353 /* ~"I had other questions, not about your faction..."~ */ GOTO 12
  IF ~~ THEN REPLY #47354 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 44 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",2)
~ THEN BEGIN 39 // from: 12.9
  SAY #47355 /* ~"You had questions about the forge? I will answer all I can."~ */
  IF ~~ THEN REPLY #47356 /* ~"Who do I talk to again?"~ */ GOTO 30
  IF ~  Global("G_Test1","GLOBAL",3)
~ THEN REPLY #47357 /* ~Show him the item you forged: "I have finished forging my creation."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 40
  IF ~  Global("G_Test1","GLOBAL",4)
~ THEN REPLY #47358 /* ~Show him the item you forged: "I have finished forging my creation."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 41
  IF ~  Global("G_Test1","GLOBAL",5)
~ THEN REPLY #47359 /* ~Show him the item you forged: "I have finished forging my creation."~ */ DO ~SetGlobal("G_Test1","GLOBAL",6)
SetGlobal("G_Test2","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",3)
~ GOTO 42
  IF ~~ THEN REPLY #47360 /* ~"Actually, just answer some other questions for me..."~ */ GOTO 12
  IF ~~ THEN REPLY #47361 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #47362 /* ~He takes it from you and examines it carefully. He seems to be restraining himself from harsh words. "At least you tried, hm? Are you ready for the next test? I certainly hope so..."~ */
  IF ~~ THEN REPLY #47363 /* ~"I suppose I am..."~ */ DO ~GiveExperience(Protagonist,6000)
~ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.2
  SAY #47364 /* ~He takes it from you and examines it carefully. "This will do. With some practice, you might become a serviceable smith. Are you ready for the next test? I certainly hope so..."~ */
  IF ~~ THEN REPLY #47365 /* ~"I suppose I am..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 39.3
  SAY #47366 /* ~He takes it from you and examines it carefully. "That is, without a doubt, one of the better pieces I have seen a recruit forge. You'll go far, my friend. Are you ready for the next test? I certainly hope so..."~ */
  IF ~~ THEN REPLY #47367 /* ~"I suppose I am..."~ */ DO ~GiveExperience(Protagonist,8000)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 40.0 41.0 42.0
  SAY #47368 /* ~He continues grimly. "A murderer has struck in the Foundry, and I am forsaking the usual test in order for you to track this killer down. Go speak to the supervisor, Alissa Tield, in the main Foundry and proceed from there. When you have completed your investigation and are ready to name a culprit, come back to me."~ */
  IF ~~ THEN REPLY #47369 /* ~"All right. Answer a few questions for me first..."~ */ JOURNAL #39501 /* ~I have completed my first Godsman quest, and I am embarking on the second test for the Godsmen - the investigation of a murder. I am to speak to the supervisor in the Foundry, and report back to Keldor when I have gathered my evidence. ~ */ GOTO 12
  IF ~~ THEN REPLY #47370 /* ~"I'll be back. Farewell."~ */ JOURNAL #39501 /* ~I have completed my first Godsman quest, and I am embarking on the second test for the Godsmen - the investigation of a murder. I am to speak to the supervisor in the Foundry, and report back to Keldor when I have gathered my evidence. ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 50 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 44 // from: 12.10
  SAY #47371 /* ~"Well? Have you found a culprit for this heinous crime? Do you have evidence?"~ */
  IF ~~ THEN REPLY #47372 /* ~"Not enough. I'd like to ask you a few more questions first..."~ */ GOTO 12
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_T","GLOBAL",1)
~ THEN REPLY #47373 /* ~"Yes. Thildon is your culprit. He has no real alibi."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",2)
Global("G_Suspect_S","GLOBAL",1)
~ THEN REPLY #47374 /* ~"Yes. Saros is your culprit. He's known to sneak around the Foundry."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",3)
~ THEN REPLY #47375 /* ~"Yes. Both Thildon and Saros are guilty, as well as Bedai-Lihn. None of them can account for their actions the night of the murder."~ */ GOTO 45
  IF ~  Global("G_Test2","GLOBAL",4)
~ THEN REPLY #47376 /* ~"Yes. Thildon is guilty. Saros gave me an awl he found near the body. It was Thildon's awl."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_1","GLOBALLaw",-2)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #47377 /* ~"Yes. Saros is guilty. He tried to frame Thildon by stealing Thildon's awl. He claimed that he recovered it near the body, but Thildon denies all knowledge of this. Saros is your man."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALEvil_Keldor_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Keldor_2","GLOBALLaw",-2)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #47378 /* ~"Saros did it. He's in league with the Anarchists."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47379 /* ~"Thildon committed the crime, but Saros tried to frame him for it - it's an Anarchist plot, and Saros is in the middle of it. Arrest them both."~ */ DO ~SetGlobal("G_Test2","GLOBAL",11)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 49
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47380 /* ~"Thildon did it. He had personal problems with Avildon, and he was trying to frame Saros for the crime. Execute him."~ */ DO ~SetGlobal("G_Test2","GLOBAL",10)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 46
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #47381 /* ~"Saros is an Anarchist, trying to break down the Foundry. He tried to frame Thildon for the crime."~ */ DO ~SetGlobal("G_Test2","GLOBAL",9)
SetGlobal("G_Test3","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",4)
~ GOTO 48
END

IF ~~ THEN BEGIN 45 // from: 44.1 44.2 44.3
  SAY #47382 /* ~He shakes his head. "We've gone over that already. That's not enough evidence to convict. Go back and investigate some more." He turns back to his work.~ */
  IF ~~ THEN REPLY #47383 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.4 44.8
  SAY #47384 /* ~He shakes his head. "I would never have believed it of Thildon. I trust your investigation was thorough... and I trust you. Allow me to summon the guards."~ */
  IF ~~ THEN REPLY #47385 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #39500 /* ~I have accused Thildon of the murder of the smith Avildon. He has been arrested.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 48.0 49.0
  SAY #47386 /* ~He seems saddened by the ordeal. "It is done. My thanks for resolving the investigation. You have but one task remaining to you. Sandoz, father of Sarossa and Saros, one of our more vital members, has returned from a harrowing journey. He has locked himself in his tower room and is threatening to kill himself. Speak to him. Stop him."~ */
  IF ~~ THEN REPLY #47387 /* ~"I'm on it. Just answer a few more questions for me..."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~My final test for Godsmen membership is to talk down a suicidal member. His name is Sandoz, and he is the father of Saros and Sarossa.~ */ GOTO 12
  IF ~~ THEN REPLY #47388 /* ~"I'm on it. Farewell."~ */ DO ~AddexperienceParty(10000)
~ JOURNAL #39499 /* ~My final test for Godsmen membership is to talk down a suicidal member. His name is Sandoz, and he is the father of Saros and Sarossa.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.5 44.6 44.9
  SAY #47389 /* ~He gasps. "I cannot believe Saros would do such a thing... but why would Thildon lie? It a grim task, but if you claim it is so, it must be so. I shall have him arrested. Allow me to summon the guards."~ */
  IF ~~ THEN REPLY #47390 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",9)
FadeFromColor([20.0],0)
~ JOURNAL #39498 /* ~I have accused Saros of the murder of the smith Avildon. He has been arrested.~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 44.7
  SAY #47391 /* ~"What? Both of them? This is a sad day for the Godsmen, a sad day indeed... Allow me a moment to summon the guards."~ */
  IF ~~ THEN REPLY #47392 /* ~"Take your time."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
SetGlobal("G_Test2","GLOBAL",11)
FadeFromColor([20.0],0)
~ JOURNAL #39495 /* ~I have accused both Thildon and Saros of the murder of the smith Avildon. They have been arrested.~ */ GOTO 47
END

IF WEIGHT #5 /* Triggers after states #: 59 58 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 50 // from: 12.11
  SAY #47393 /* ~"Have you succeeded in convincing him that life is worthwhile?"~ */
  IF ~  !Global("G_Test3","GLOBAL",6)
!Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47394 /* ~"Not yet. He's still alive, at least. Answer some more questions for me, would you?"~ */ GOTO 12
  IF ~  Global("G_Test3","GLOBAL",6)
~ THEN REPLY #47395 /* ~"I have succeeded. He has regained his zest for life."~ */ DO ~AddexperienceParty(12000)
SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64545 /* ~I reported my success in saving Sandoz' life to Keldor. He was exceptionally pleased.~ */ GOTO 51
  IF ~  Global("G_Test3","GLOBAL",7)
~ THEN REPLY #47396 /* ~"I failed. He took his own life."~ */ DO ~SetGlobal("G_Test3","GLOBAL",8)
SetGlobal("Join_Godsmen","GLOBAL",5)
~ JOURNAL #64546 /* ~I reported my failure in saving Sandoz' life to Keldor. Though he was disappointed, he understood that it was a difficult task, and told me I had passed the test simply by trying.~ */ GOTO 52
  IF ~~ THEN REPLY #47397 /* ~"Not yet. I'm working on it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #47398 /* ~"You have succeeded? Glorious news! Congratulations, my friend! You have proven yourself worthy of joining the Godsmen! Would you like to take the oath now, or perhaps wait until later?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47399 /* ~"Now."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47400 /* ~"Now."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47401 /* ~"Now."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67783 /* ~"Now."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67784 /* ~"Now."~ */ GOTO 56
  IF ~~ THEN REPLY #67785 /* ~"I'll do it later. Answer some questions for me, will you?"~ */ GOTO 12
  IF ~~ THEN REPLY #67786 /* ~"I'll do it later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.2
  SAY #47402 /* ~"You have failed? That is sad, sad news. But you tried, yes? That is the important thing. That you tried." He does his best to look cheery, and fails miserably. "Would you care to take the oath now, or later?"~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #47403 /* ~"Now."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,8000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47404 /* ~"Now."~ */ GOTO 56
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #47405 /* ~"Now."~ */ GOTO 56
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67787 /* ~"Now."~ */ GOTO 56
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #67788 /* ~"Now."~ */ GOTO 56
  IF ~~ THEN REPLY #67789 /* ~"I'll do it later. Answer some questions for me, will you?"~ */ GOTO 12
  IF ~~ THEN REPLY #67790 /* ~"I'll do it later. Farewell."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 53 // from:
  SAY #47406 /* ~You see a sturdy man who looks like he's just bursting with vitality. His face is tanned and lined, and his black beard is beginning to show hints of white. "Hail, stranger, and well met! What can I do for you this fine day?"~ */
  IF ~~ THEN REPLY #47407 /* ~"I'd like to ask you a few questions..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47408 /* ~"I have a message for you from Giltspur the auctioneer."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54086 /* ~"Nothing right now, thanks. Farewell."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 59 58 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 54 // from:
  SAY #47409 /* ~"Well met, friend! What can I do for you today?"~ */
  IF ~~ THEN REPLY #47410 /* ~"You can answer some questions..."~ */ GOTO 12
  IF ~  Global("Gilt_Miss","GLOBAL",3)
PartyHasItem("GiltNote")
~ THEN REPLY #47411 /* ~"I have a message for you from Giltspur the auctioneer."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",4)
DestroyPartyItem("GiltNote",FALSE)
~ GOTO 55
  IF ~~ THEN REPLY #54087 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 12.23 53.1 54.1
  SAY #51171 /* ~"A message, eh?" He takes the note from you. "Very well. You can tell him the message is delivered. Was there anything else you wanted?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51172 /* ~"I had a few more questions."~ */ GOTO 9
  IF ~  GlobalLT("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #51173 /* ~"I had a few more questions."~ */ GOTO 12
  IF ~~ THEN REPLY #51174 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.1 10.2 10.3 10.4 51.1 51.2 51.3 51.4 52.1 52.2 52.3 52.4
  SAY #66315 /* ~He scowls at you. "You must first renounce your membership in the faction you joined since you applied to join the Godsmen."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66318 /* ~Renounce the Anarchists truthfully: "I do renounce that faction."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Anarchists","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66319 /* ~"I do renounce the Sensates."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66320 /* ~"I do renounce the Dustmen."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Dustmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66321 /* ~"I do renounce the Chaosmen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #66322 /* ~Lie to infiltrate the faction for the Anarchists: "I do renounce that faction."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",6)
GiveExperience(Protagonist,6000)
~ GOTO 11
  IF ~~ THEN REPLY #66323 /* ~"I won't."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.5
  SAY #66316 /* ~"Then I cannot allow you to join my faction. Farewell." He turns away from you.~ */
  IF ~~ THEN REPLY #66317 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 58 // from:
  SAY #6342 /* ~"You will find that I am not defenseless, scarred one. Come no closer."~ */
  IF ~~ THEN REPLY #6343 /* ~Done.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 59 // from:
  SAY #6344 /* ~"Clearly, you do not belong here. Leave now, intruder, or the guards shall take harsher measures than a simple escort."~ */
  IF ~~ THEN REPLY #6347 /* ~Leave.~ */ EXIT
END
