// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADMINAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DADMINAS~

IF ~  Global("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61498 /* ~You see a middle aged man wearing fine clothes. He gives you a bored look as you approach. ~ */
  IF ~~ THEN REPLY #61499 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #61500 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61501 /* ~He nods slightly. "And to you, cutter. I am Carl Parfidor, administrative assistant. May I help you?"~ */
  IF ~~ THEN REPLY #61502 /* ~"I am looking for a deva. I've been told he's in Curst."~ */ GOTO 2
  IF ~~ THEN REPLY #61503 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #61504 /* ~He frowns at you. "You must mean Trias. Yes, he's here. He's in the prison as a matter of fact. Why do you want to see him?"~ */
  IF ~~ THEN REPLY #61505 /* ~"Do I need a reason?"~ */ GOTO 3
  IF ~~ THEN REPLY #61506 /* ~"It's a private matter."~ */ GOTO 4
  IF ~~ THEN REPLY #61507 /* ~"I have some questions that only he can answer."~ */ GOTO 5
  IF ~~ THEN REPLY #61508 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61509 /* ~He laughs. "Yes, you do. Now, why do you want to see Trias?"~ */
  IF ~~ THEN REPLY #61510 /* ~"It's a private matter."~ */ GOTO 4
  IF ~~ THEN REPLY #61511 /* ~"I have some questions that only he can answer."~ */ GOTO 5
  IF ~~ THEN REPLY #61512 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #61513 /* ~He smiles and shakes his head. "Nothing concerning Trias is private. Why do you want to see him?"~ */
  IF ~~ THEN REPLY #61514 /* ~"I have some questions that only he can answer."~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #61515 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.1 4.0
  SAY #61516 /* ~He gazes at you steadily for a while. "I see. Well, no one is allowed to see Trias without permission from Tovus Giljaf." He smiles at you. "And no one sees Tovus unless he sends for them. I suggest you leave."~ */
  IF ~~ THEN REPLY #61517 /* ~"Surely you can get me in to see Tovus."~ */ GOTO 6
  IF ~~ THEN REPLY #61518 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #61519 /* ~He laughs. "Yes, but I have no intention of allowing you entry unless Tovus sends for you. Now leave."~ */
  IF ~~ THEN REPLY #61520 /* ~"I can always take you out and just walk in to see him."~ */ GOTO 7
  IF ~~ THEN REPLY #61521 /* ~"This is important. There must be some way I can get in to see Tovus."~ */ GOTO 8
  IF ~~ THEN REPLY #61522 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #61523 /* ~He looks you up and down then nods his head. "Oh yes, you are quite formidable and could get by me with little problem. However, I think the city guard would be a match for you and then there is the fact that Tovus is an accomplished spellslinger himself. It would be foolish for you to try..."~ */
  IF ~~ THEN REPLY #61524 /* ~"This is important. There must be some way I can get in to see Tovus."~ */ GOTO 8
  IF ~~ THEN REPLY #61525 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #61526 /* ~He shakes his head. "The only way through that door is if Tovus sends for you or I let you in. Tovus did not send for you and I have no intention of letting you in myself." He laughs. "Unless, of course, you do something important for me. Hmm. I can't think of anything I want from you."~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #61527 /* ~"What if I told you that your wife, Roberta, is plotting to have you killed?"~ */ DO ~SetGlobal("Roberta_Betrayed","GLOBAL",1)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 9
  IF ~~ THEN REPLY #61528 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #61529 /* ~He stares at you blankly then suddenly snorts. "That's ridiculous. Why would she do that?"~ */
  IF ~~ THEN REPLY #61530 /* ~"She's been checking up on you. She knows about all the harlots and wants you dead."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #61531 /* ~You seem to have his attention; he is hanging on every word. "And who, may I ask, is supposed to perform the deed. You perhaps?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61532 /* ~"No, Roberta was thinking of hiring a harlot to do it. Probably a girl named Kiri."~ */ GOTO 11
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61533 /* ~"No, Roberta was thinking of hiring a harlot to do it since no one else can get close enough to you."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #61534 /* ~He gazes at you for some time. "Wait here. I will return within the hour..." He starts to walk away then pauses. "Oh, and your information had better be correct. If I find otherwise, you'll be in the prison with Trias." He smiles. "You can talk to him freely then, for all the good it will do you." He walks away.~ */
  IF ~~ THEN REPLY #61535 /* ~"I will wait."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #61536 /* ~You see Carl Parfidor. He has a look of concern on his face as he approaches. "Thank you for waiting, cutter. It seems your information proved correct. I thank you for that."~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61537 /* ~"So, what happens to Roberta and Kiri now?"~ */ GOTO 14
  IF ~  Global("Know_Kiri","GLOBAL",0)
~ THEN REPLY #61538 /* ~"So what happens to Roberta now?"~ */ GOTO 15
  IF ~~ THEN REPLY #61539 /* ~"So, can I see Tovus now?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.0 15.0
  SAY #61540 /* ~He shakes his head. "No you can't. Tovus Giljaf sees no one unless he sends for them. Now, I suggest you leave before I have you arrested for conspiring to assassinate a city official!" He smiles at you. "Unless you'd like to spend the rest of your days in a cell with Roberta?"~ */
  IF ~~ THEN REPLY #61541 /* ~"No, I'll be leaving now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #61542 /* ~He gives you a surprised look. "Does it really matter to you?" He shrugs. "Never mind... Roberta confessed to the crime and will be sent to the prison. Kiri on the other hand... I have other plans for her." He smiles.~ */
  IF ~~ THEN REPLY #61543 /* ~"So, can I see Tovus now?"~ */ GOTO 13
  IF ~~ THEN REPLY #61544 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #61545 /* ~He gives you a surprised look. "Does it really matter to you?" He shrugs. "Never mind... Roberta confessed to the crime and will be sent to the prison." He smiles.~ */
  IF ~~ THEN REPLY #61546 /* ~"So, can I see Tovus now?"~ */ GOTO 13
  IF ~~ THEN REPLY #61547 /* ~"I see. I must be going now. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Carl_Snuffed","GLOBAL",0)
~ THEN BEGIN 16 // from:
  SAY #61548 /* ~You see a middle aged man wearing fine clothes. He smiles at your approach.~ */
  IF ~~ THEN REPLY #61549 /* ~"Greetings."~ */ GOTO 17
  IF ~~ THEN REPLY #61550 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #61551 /* ~He gives you a slight nod. "Good day, cutter. I am the administrative assistant. How may I help you?"~ */
  IF ~~ THEN REPLY #61552 /* ~"I am looking for a deva. I've been told he's in Curst."~ */ GOTO 18
  IF ~~ THEN REPLY #61553 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #61554 /* ~"Just a moment please..." He shuffles through some papers for a while then pauses to read a page. "Ah! Here we are... That would be Trias. Hmmm..." He frowns and shakes his head.~ */
  IF ~~ THEN REPLY #61555 /* ~"Is there a problem?"~ */ DO ~SetGlobal("See_Tovus","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #61556 /* ~"I'm afraid so... No one is allowed to see Trias without the express permission of Tovus Giljaf."~ */
  IF ~~ THEN REPLY #61557 /* ~"Then I would like to see Tovus."~ */ GOTO 20
  IF ~~ THEN REPLY #61558 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #61559 /* ~He frowns and shakes his head. "I'm afraid that's not possible. No one sees Tovus unless he sends for them."~ */
  IF ~~ THEN REPLY #61560 /* ~"It's important that I see him."~ */ GOTO 21
  IF ~~ THEN REPLY #61561 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #61562 /* ~He gives you an irritated look. "I'm sorry, cutter, but no one sees Tovus unless he sends for them. Please leave."~ */
  IF ~~ THEN REPLY #61563 /* ~"I can't even make an appointment for some future date?"~ */ GOTO 22
  IF ~~ THEN REPLY #61564 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #61565 /* ~He glares at you. "No. You cannot see Tovus today, tomorrow, or any other day unless he sends for you. You cannot make an appointment to see Tovus today, tomorrow, or any other day because he does not take appointments. If you want to see Tovus, you will see him when HE wants to see YOU because HE will send for YOU." He pauses to take a breath and smiles. "Have I made myself clear?"~ */
  IF ~~ THEN REPLY #61566 /* ~"Very, farewell."~ */ EXIT
END
