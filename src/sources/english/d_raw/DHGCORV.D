// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGCORV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGCORV~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 22 20 21 33 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37282 /* ~You see a tall man in plate armor. The armor is of unusual construction with spikes flaring from the shoulders, elbows, and forearms. He nods at your approach, but then his eyes wander about the market. "Good day, citizen. I am guard Corvus."~ */
  IF ~~ THEN REPLY #37283 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37284 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37285 /* ~"How may I help you, citizen?" He gives you a friendly look, but glances over your shoulder.~ */
  IF ~~ THEN REPLY #37286 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37287 /* ~"I don't think you can. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.2 8.1 9.0 11.0 12.0 13.1 14.2 16.0 17.0 18.0 19.0 22.0 23.0 25.1 26.0 28.2 29.1 30.0 31.2 33.0 34.0 35.4 36.0 42.0 43.1 44.0
  SAY #37288 /* ~He nods to you. "I will help you if I can, citizen." He looks about the market expectantly.~ */
  IF ~~ THEN REPLY #37289 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37290 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 6
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37291 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Know_Lenny","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37292 /* ~"Do you know someone named Lenny?"~ */ GOTO 24
  IF ~  Global("Know_Byron","GLOBAL",1)
!Global("Byron_Arrested","GLOBAL",1)
~ THEN REPLY #37293 /* ~"Do you know someone named Byron Pikit?"~ */ GOTO 27
  IF ~  Global("Know_Anarchists","GLOBAL",1)
~ THEN REPLY #37294 /* ~"Do you know that there are some anarchists over at the warehouse?"~ */ GOTO 35
  IF ~~ THEN REPLY #37295 /* ~"I need to buy some weapons."~ */ GOTO 11
  IF ~~ THEN REPLY #37296 /* ~"I need to buy some magic items."~ */ GOTO 12
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37297 /* ~Try to see what he is looking at.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37298 /* ~Try to see what he is looking at.~ */ GOTO 19
  IF ~  !Global("Byron_Arrested","GLOBAL",1)
Global("Corvus_Zac","GLOBAL",1)
~ THEN REPLY #24718 /* ~"I wanted to talk to you about the merchant Zac."~ */ JOURNAL #66255 /* ~Corvus, the Harmonium guard, is looking for evidence that points to the murderer of a merchant named Zac. Maybe I should keep an eye open...~ */ GOTO 42
  IF ~~ THEN REPLY #66254 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37299 /* ~He gives you a slight bow. "I am Harmonium guard Corvus, citizen. I help keep the peace here at the market." He glances about for a moment, then looks at you.~ */
  IF ~~ THEN REPLY #37300 /* ~"Tell me about the Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37301 /* ~"I have other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37302 /* ~"Our belief is simple: We are the light. We are the Way. We are Order. We are Truth. We maintain and enforce order here in Sigil. We police the city." He looks about again.~ */
  IF ~~ THEN REPLY #37303 /* ~"What can you tell me of the other factions?"~ */ GOTO 5
  IF ~~ THEN REPLY #37304 /* ~"I see. I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37305 /* ~"I know little about them, citizen. I'm sorry, but you will have to take your questions to a representative of their order for answers." He smiles, then looks about.~ */
  IF ~~ THEN REPLY #37306 /* ~"I have other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 2.1 10.0
  SAY #37307 /* ~He turns his gaze on you and frowns. "I would counsel you against disturbing Lothar, citizen. I doubt you really want to find him."~ */
  IF ~~ THEN REPLY #37308 /* ~"Why?"~ */ JOURNAL #66533 /* ~I talked to Corvus, the Harmonium guard, about Lothar. He warned me that Lothar is very powerful and not to be trifled with. Be that as it may, I still need to find him.~ */ GOTO 7
  IF ~~ THEN REPLY #37309 /* ~"I still need to find him."~ */ JOURNAL #66534 /* ~Corvus says that Lothar can be found in a wrecked house in the Lower Ward.~ */ GOTO 9
  IF ~~ THEN REPLY #37310 /* ~"I see... I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37311 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #37312 /* ~He frowns as he looks off into the distance. "I'm a realist, citizen, as well as a Harmonium officer. As a realist I know that there are those who are above the law. It is a fact of life." He pauses.~ */
  IF ~~ THEN REPLY #37313 /* ~"Go on."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37314 /* ~"Some people don't fear the law because of their connections in the city, others due to their sheer power and the fear they instill in people. Lothar is a power to be reckoned with, citizen. He is untouchable, if you understand my meaning."~ */
  IF ~~ THEN REPLY #37315 /* ~"I still need to find him."~ */ JOURNAL #66534 /* ~Corvus says that Lothar can be found in a wrecked house in the Lower Ward.~ */ GOTO 9
  IF ~~ THEN REPLY #37316 /* ~"I see... I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37317 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.0
  SAY #37318 /* ~He sighs as he looks about the market. "Very well, citizen. His kip is somewhere south of here in a wrecked house. Good luck to you."~ */
  IF ~~ THEN REPLY #37319 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37320 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37321 /* ~He stares at you for some time before answering. "That sounds like something that Lothar, the Master of the Bones, would do."~ */
  IF ~~ THEN REPLY #37322 /* ~"Where can I find this 'Lothar'?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 2.6
  SAY #37323 /* ~"You need to talk to Anze, citizen. He can help you. He is over by the furnace."~ */
  IF ~~ THEN REPLY #37324 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37325 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.7
  SAY #37326 /* ~"You need to talk to Aalek, citizen. He can help you. He is over on the other side of the market."~ */
  IF ~~ THEN REPLY #37327 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37328 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.8 18.1
  SAY #37329 /* ~You glance over your shoulder and see Karina wandering nearby. Corvus seems to have his eyes locked on her as she wanders about.~ */
  IF ~~ THEN REPLY #37330 /* ~"Her name is Karina."~ */ GOTO 14
  IF ~~ THEN REPLY #37331 /* ~Ignore the situation.~ */ GOTO 2
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37332 /* ~He snaps his attention back to you. "I beg your pardon, you know her, citizen?" He looks at Karina again. "Voice of an angel and such a pretty young thing..." ~ */
  IF ~~ THEN REPLY #37333 /* ~"Yes, and she's also lonely... I'm certain she would welcome the company of a gentleman..."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~The Harmonium guard, Corvus, seemed infatuated with a young woman named Karina. I told him that she was lonely and in need of a friend.~ */ GOTO 15
  IF ~~ THEN REPLY #37334 /* ~"Certainly. I'm sure that all her suitors say the same thing about her..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaotic_Corvus_1","GLOBALLaw",-1)
~ GOTO 17
  IF ~~ THEN REPLY #37335 /* ~"I have some more questions for you..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 15 // from: 14.0 18.3
  SAY #37336 /* ~He glances at you, then back at Karina. "Excuse me a moment, citizen." He steps around you and heads toward Karina.~ */
  IF ~~ THEN REPLY #37342 /* ~"All right."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #37343 /* ~Corvus returns to you and is smiling brightly. "Thank you, friend. A wonderful young lady..." He looks a little glassy-eyed.~ */
  IF ~~ THEN REPLY #37344 /* ~"My pleasure, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37345 /* ~"Farewell, Corvus."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.1
  SAY #37346 /* ~He sighs and returns his attention to you. He does not appear to be very happy at the moment. "You were saying, citizen?"~ */
  IF ~~ THEN REPLY #37347 /* ~"I have some questions for you..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 22 20 21 33 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #37348 /* ~You see Corvus, the Harmonium guard. "Hello again, citizen. How may I serve you." He glances over your shoulder and seems to be looking for someone.~ */
  IF ~~ THEN REPLY #37349 /* ~"I have some questions..."~ */ GOTO 2
  IF ~  Global("Karina_Friend","GLOBAL",1)
~ THEN REPLY #37350 /* ~Try to see what he is looking at.~ */ GOTO 13
  IF ~  Global("Karina_Friend","GLOBAL",0)
~ THEN REPLY #37351 /* ~Try to see what he is looking at.~ */ GOTO 19
  IF ~  Global("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37352 /* ~"I found out that Karina isn't seeing anyone. I think she would enjoy the company of a gentleman..."~ */ DO ~SetGlobal("Karina_Friend","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Corvus_1","GLOBALGood",1)
~ JOURNAL #36027 /* ~The Harmonium guard, Corvus, seemed infatuated with a young woman named Karina. I told him that she was lonely and in need of a friend.~ */ GOTO 15
  IF ~~ THEN REPLY #37353 /* ~"I don't think you can. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.9 18.2
  SAY #37354 /* ~You glance over your shoulder and notice a young lady wandering about the market. Corvus seems to have his eyes locked on her.~ */
  IF ~~ THEN REPLY #37355 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37356 /* ~"You seem preoccupied. What are you looking at?"~ */ GOTO 43
  IF ~~ THEN REPLY #66273 /* ~"I must be going now, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 33 even though they appear after this state */
~  Dead("Karina")
~ THEN BEGIN 20 // from:
  SAY #37357 /* ~You see a Harmonium guard. He looks very distraught and barely in control of himself. "Forgive me, citizen. I cannot speak with you at this time... I've suffered a great loss and want to be left to myself."~ */
  IF ~~ THEN REPLY #37358 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 33 even though they appear after this state */
~  Dead("Karina")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from:
  SAY #37359 /* ~You see Corvus, the Harmonium guard. He looks very distraught and barely in control of himself. "Forgive me, citizen. I cannot speak with you at this time... I've suffered a great loss and want to be left to myself."~ */
  IF ~~ THEN REPLY #37360 /* ~Leave.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 even though they appear after this state */
~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #37361 /* ~You see Corvus the Harmonium guard. He smiles at your approach and gives you a slight bow. "Hello, friend. I hope you are doing well."~ */
  IF ~~ THEN REPLY #37362 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37363 /* ~"How are you and Karina doing?"~ */ GOTO 23
  IF ~~ THEN REPLY #37364 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.1
  SAY #37365 /* ~He smiles broadly. "We are doing well, thank you. I owe you for your kindness, friend."~ */
  IF ~~ THEN REPLY #37366 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37367 /* ~"It was my pleasure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.3
  SAY #37368 /* ~He frowns in thought. "Lenny... yes, I know a thief who goes by that name. He can usually be found over by the siege tower."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37369 /* ~"What can you tell me about him?"~ */ JOURNAL #36025 /* ~Corvus says that Lenny is a master thief who has avoided capture on several occasions. He also says that Lenny seems to be a moral person who would not harm anyone.~ */ GOTO 25
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37370 /* ~"What can you tell me about him?"~ */ GOTO 30
  IF ~~ THEN REPLY #37371 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #37373 /* ~"Officially, nothing." He pauses for a moment before answering. "Unofficially, he is a thief, and a good one - a master, I would say. Although he is a thief he seems to have some ethics, he has never been suspected of assault or murder. He has managed to avoid the law on numerous occasions..." He pauses.~ */
  IF ~~ THEN REPLY #37374 /* ~"Anything else?"~ */ JOURNAL #36024 /* ~Corvus told me he trusts Lenny enough to turn his back to him.~ */ GOTO 26
  IF ~~ THEN REPLY #37375 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37376 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37377 /* ~"Yes... I would not be afraid to turn my back to Lenny. There are few people I can say that about, but Lenny is one of them." He shrugs. "That is all, friend."~ */
  IF ~~ THEN REPLY #37378 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37379 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.4
  SAY #37380 /* ~He frowns and nods his head. "Yes, I am familiar with Byron."~ */
  IF ~  GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #37381 /* ~"What can you tell me about him?"~ */ JOURNAL #36023 /* ~Corvus says that Byron Pikit is a suspected criminal. He is believed to be behind most of the crime in the open-air market of the Lower Ward.~ */ GOTO 28
  IF ~  GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #37382 /* ~"What can you tell me about him?"~ */ GOTO 30
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37383 /* ~"I have evidence that proves he is involved in criminal acts here in Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37384 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #37385 /* ~"Officially, nothing." He pauses for a moment before answering. "Unofficially, he is suspected of being behind most of the criminal activity here at the market. We believe him to be responsible for the murder of a merchant named Zac. His list of suspected crimes is quite long." He pauses.~ */
  IF ~~ THEN REPLY #37386 /* ~"Anything else?"~ */ JOURNAL #37391 /* ~Corvus says he would never turn his back on Byron Pikit or be anywhere alone with him.~ */ GOTO 29
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37387 /* ~"I have evidence that proves he is involved in criminal acts here in Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37388 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37389 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37392 /* ~"Yes... I would not turn my back to him and I would think twice about being anywhere alone with him." He shrugs. "That is all, friend."~ */
  IF ~  PartyHasItem("Evidence")
~ THEN REPLY #37393 /* ~"I have evidence that proves he is involved in criminal acts here in Sigil."~ */ GOTO 31
  IF ~~ THEN REPLY #37394 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37395 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 24.1 27.1
  SAY #37396 /* ~He gives you a stern look. "Anything I know about that individual is Harmonium business, citizen. I cannot discuss such matters with strangers. Perhaps after I get to know you better..."~ */
  IF ~~ THEN REPLY #37397 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37398 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 27.2 28.1 29.0
  SAY #37399 /* ~He looks at you with interest. "Oh? May I see this evidence?"~ */
  IF ~  !Dead("Byron")
~ THEN REPLY #37400 /* ~Give him the papers.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~I gave Corvus, the Harmonium guard, evidence that proved Byron Pikit to be a criminal. He has arrested Byron and will see that he is properly tried in court.~ */ GOTO 32
  IF ~  Dead("Byron")
~ THEN REPLY #37401 /* ~Give him the papers.~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",5)
AddexperienceParty(2000)
TakePartyItemNum("Evidence",1)
~ JOURNAL #37403 /* ~I gave Corvus, the Harmonium guard, evidence that proved Byron Pikit to be a criminal. He has arrested Byron and will see that he is properly tried in court.~ */ GOTO 34
  IF ~~ THEN REPLY #37402 /* ~"Let me think about this. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #39441 /* ~"I think I should be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #37404 /* ~He examines the papers thoroughly then folds them and puts them away. He nods to you and smiles. "Excellent work, citizen. These documents are quite detailed in their content. I personally will see to it that Byron Pikit is taken before the courts." He salutes you then turns to leave. "I shall return shortly."~ */
  IF ~~ THEN REPLY #37405 /* ~"All right."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Byron_Arrested","GLOBAL",1)
~ GOTO 33
END

IF WEIGHT #1 ~  Global("Byron_Arrested","GLOBAL",3)
~ THEN BEGIN 33 // from: 32.0
  SAY #37406 /* ~He soon returns and smiles at you. "The deed is done. Pikit has been removed from the streets, the evidence has been presented to the courts, and soon he will stand trial." He gives you a slight bow. "Once again I thank you."~ */
  IF ~~ THEN REPLY #37407 /* ~"My pleasure. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37408 /* ~"Thank you. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 31.1
  SAY #39442 /* ~He examines the papers thoroughly then folds them and puts them away. He nods to you and smiles. "Excellent work, citizen. I will see that these documents are set before the courts so that all may know of Byron's infamy." He frowns. "However, Byron Pikit is dead and now faces a higher judgement."~ */
  IF ~~ THEN REPLY #39443 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #39444 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.5
  SAY #43033 /* ~He frowns, deep in thought for a moment. "Well, there are anarchists scattered throughout the city, citizen. Unless they break the law, there is little that can be done about them."~ */
  IF ~  Global("Kill_Vorten","GLOBAL",0)
~ THEN REPLY #43034 /* ~"I thought they were considered a dangerous element that had to be dealt with before they caused trouble?"~ */ GOTO 36
  IF ~  Global("Kill_Vorten","GLOBAL",1)
!Dead("Vorten")
~ THEN REPLY #43035 /* ~"Their leader asked me to kill a Harmonium officer named Measure Three Vorten."~ */ GOTO 37
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalGT("Karina_Friend","GLOBAL",2)
~ THEN REPLY #43036 /* ~"Well, I have it on good authority that they are responsible for the death of Measure Three Vorten."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",5)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 40
  IF ~  GlobalGT("Kill_Vorten","GLOBAL",0)
Dead("Vorten")
GlobalLT("Karina_Friend","GLOBAL",3)
~ THEN REPLY #43037 /* ~"Well, I have it on good authority that they are responsible for the death of Measure Three Vorten."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",6)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
AddexperienceParty(2000)
~ GOTO 41
  IF ~~ THEN REPLY #43038 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #43039 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #43040 /* ~He sighs. "I agree with that view, citizen. However, I personally do not believe in running around and bashing heads without proof of wrongdoing. If you can give me just cause, I will see that these anarchists are dealt with. Otherwise, they have a right to gather and talk."~ */
  IF ~~ THEN REPLY #43041 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #43042 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1
  SAY #43043 /* ~He gives you a concerned look. "That is a very serious charge, citizen. Are you certain you wish to make such an accusation?"~ */
  IF ~~ THEN REPLY #43044 /* ~"Yes."~ */ DO ~SetGlobal("Kill_Vorten","GLOBAL",4)
AddexperienceParty(2000)
SetGlobal("Know_Anarchists","GLOBAL",2)
SetGlobal("Join_Anarchists","GLOBAL",2)
~ JOURNAL #66535 /* ~I told Corvus that the anarchists asked me to kill Measure Three Vorten. He said he will see that they are dealt with.~ */ GOTO 38
  IF ~~ THEN REPLY #43045 /* ~"No, I guess not."~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #43046 /* ~"Very well. I will see that they are dealt with. Excellent work citizen." He smiles at you.~ */
  IF ~~ THEN REPLY #43047 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #43048 /* ~He shrugs. "Then we need not discuss this issue further."~ */
  IF ~~ THEN REPLY #43049 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #43050 /* ~"How you could possibly know that... unless you were somehow involved in the matter?" He glares at you for some time before continuing. "Because you are a friend, I will forget who I heard this from. Meanwhile, I will see that the anarchists are dealt with. Good day to you, citizen."~ */
  IF ~~ THEN REPLY #43052 /* ~"Farewell."~ */ JOURNAL #66536 /* ~I told Corvus that the anarchists were responsible for the death of Measure Three Vorten. He immediately suspected my involvement in the matter but didn't press the issue. I'm sure it was because of our friendship that he is letting the matter slide. He said he will deal with the anarchists.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 35.3
  SAY #43053 /* ~"How you could possibly know that... unless you were somehow involved in the matter?" He glares at you for some time before continuing. "I will see that the anarchists are dealt with, citizen. Good day to you."~ */
  IF ~~ THEN REPLY #43054 /* ~"Farewell."~ */ DO ~Enemy()
~ JOURNAL #66537 /* ~I told Corvus that the anarchists were responsible for the death of Measure Three Vorten. He immediately suspected my involvement in the matter but didn't press the issue. However, he will no longer speak to me.~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.10
  SAY #66251 /* ~"Anything I know about that is Harmonium business, citizen. I cannot discuss such matters..." He pauses. "All I can say is that Zac was murdered and an investigation is being conducted. If you discover anything that will further that investigation, please bring it to my attention." ~ */
  IF ~~ THEN REPLY #66252 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66253 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 19.1
  SAY #66266 /* ~He snaps his attention back to you. "I beg your pardon, citizen. Please excuse me..." His eyes wander back to the young woman and his voice fades almost to a whisper. "She has the voice of an angel and she is such a pretty young thing..." He sighs.~ */
  IF ~~ THEN REPLY #66267 /* ~"Why don't you go talk to her? You seem quite infatuated with her..."~ */ JOURNAL #66539 /* ~Corvus seems to be infatuated with a young woman at the open-air market. I told him he should talk to her but... he seems to think she is too good for him. Maybe I'll talk to her and see what she is like.~ */ GOTO 44
  IF ~~ THEN REPLY #66268 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66269 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #66270 /* ~An uncomfortable silence fills the air. Finally he turns his attention back to you. "I... I just couldn't. I mean, a woman like that... well, she must be..." He sighs and pauses for a moment. "Was there anything else I can help you with citizen?"~ */
  IF ~~ THEN REPLY #66271 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66272 /* ~"I must be going, farewell."~ */ EXIT
END
