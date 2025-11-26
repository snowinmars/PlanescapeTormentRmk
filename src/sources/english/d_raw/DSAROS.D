// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43405 /* ~"Hey, don't touch me! Leave me alone!"~ */
  IF ~~ THEN REPLY #43406 /* ~"I just wanted to... forget it."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #43407 /* ~"They caught you, huh? Too bad."~ */
  IF ~~ THEN REPLY #43408 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
!Dead("Sandoz")
~ THEN BEGIN 2 // from:
  SAY #43409 /* ~"Thanks for your mercy. I'll stay on the straight and narrow now, all right?"~ */
  IF ~~ THEN REPLY #43410 /* ~"Sure, Saros. Answer some questions for me, will you?"~ */ GOTO 4
  IF ~~ THEN REPLY #43411 /* ~"Whatever. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 6 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",3)
GlobalLT("G_Test2","GLOBAL",12)
~ THEN BEGIN 3 // from:
  SAY #43412 /* ~"What have you found? Are you going to let me go free?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43413 /* ~"Thildon says that you planted the awl at the murder scene, and that you're trying to frame him for the murder because you two disagreed."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43414 /* ~"Thildon tells me that you and Bedai-Lihn are Anarchists, and that you're trying to frame him because he turned down an offer to join you."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43415 /* ~"I've found enough to make a decision."~ */ GOTO 18
  IF ~~ THEN REPLY #43416 /* ~"No, not yet. However, I had some more questions for you."~ */ GOTO 15
  IF ~~ THEN REPLY #43417 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.2 8.0 10.2 11.0 13.0
  SAY #43418 /* ~"Sure. Whatever you want to know..."~ */
  IF ~~ THEN REPLY #43419 /* ~"Tell me about yourself."~ */ GOTO 5
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43420 /* ~"Tell me about the Great Foundry."~ */ GOTO 9
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43421 /* ~"Tell me about the Great Foundry."~ */ GOTO 8
  IF ~~ THEN REPLY #43422 /* ~"Tell me about the Anarchists."~ */ GOTO 10
  IF ~~ THEN REPLY #43423 /* ~"Tell me about the people here."~ */ GOTO 11
  IF ~~ THEN REPLY #43424 /* ~"Nothing right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43425 /* ~"Let's see... I grew up in the Foundry with my sister Sarossa. My father Sandoz is a factor here, so he spent more time away trying to gain converts and increase the influence of the faction. My sister Sarossa's kind of a witch, but she knows stuff. She knows how to change people to make them more like what they are."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43426 /* ~"What do you mean?"~ */ GOTO 13
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43427 /* ~"What do you mean?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 13
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43428 /* ~"I've heard that already. Answer some other questions, will you?"~ */ GOTO 4
  IF ~~ THEN REPLY #43429 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Join_Godsmen","GLOBAL",3)
Dead("Sandoz")
~ THEN BEGIN 6 // from:
  SAY #43430 /* ~"Leave me alone. My father's dead."~ */
  IF ~~ THEN REPLY #43431 /* ~"I had a few questions."~ */ GOTO 7
  IF ~~ THEN REPLY #43432 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0
  SAY #43433 /* ~"I said to leave me alone!"~ */
  IF ~~ THEN REPLY #43434 /* ~"Fine, fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2
  SAY #43435 /* ~"I grew up here. I played in the main foundry area and ran through the barracks. It stinks and it's loud and people can be ... people, I guess... but it's still home for me."~ */
  IF ~~ THEN REPLY #43436 /* ~"Touching. Answer a few more questions for me..."~ */ GOTO 4
  IF ~~ THEN REPLY #43437 /* ~"Thanks, Saros. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.1
  SAY #43438 /* ~"They're all dead. All the people who would play with me when I was a kid... they all died in that explosion. The Foundry used to feel like home, but it just hurts now. Can you leave me alone?"~ */
  IF ~~ THEN REPLY #43439 /* ~"Tough, kid. I have some more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #43440 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.3
  SAY #43441 /* ~"I'd rather not talk about that. I thought they'd help me and make my life exciting, but instead they turned on me. I guess they have to look out for themselves when everyone's against them... but I just wanted to be part of them."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",0)
~ THEN REPLY #43442 /* ~"That defeats the entire point of anarchy, Saros. You're supposed to be your own person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Saros_1","GLOBALLaw",-1)
AddexperienceParty(200)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Chaotic_Saros_1","GLOBAL",1)
~ THEN REPLY #43443 /* ~"That defeats the entire point of anarchy, Saros. You're supposed to be your own person."~ */ GOTO 14
  IF ~~ THEN REPLY #43444 /* ~"Sure. You're just a kid. You'll get over it. Answer some more questions for me."~ */ GOTO 4
  IF ~~ THEN REPLY #43445 /* ~"I understand. You'll get over it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.4
  SAY #43446 /* ~He shrugs. "They're just people."~ */
  IF ~~ THEN REPLY #43447 /* ~"Helpful. Can you answer any more questions for me?"~ */ GOTO 4
  IF ~~ THEN REPLY #43448 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #43449 /* ~"So to be part of them I have to not want to be part of them?"~ */
  IF ~~ THEN REPLY #43450 /* ~"Basically. By being yourself, you become more than a pawn. Think about it. Farewell."~ */ JOURNAL #39515 /* ~I told Saros how to be an Anarchist.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1
  SAY #43451 /* ~"She can just look at someone and see what needs adding and what needs taking away. I don't know how she does it. My father always said it was something about her ascending to another level. He said *she* was a born Godsman."~ */
  IF ~~ THEN REPLY #43452 /* ~"Thanks. I had some more questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #43453 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #43454 /* ~"You already said that! Can't you come up with something original? Why do you keep saying the same things over and over, anyway? Are you looking for something more from me?"~ */
  IF ~~ THEN REPLY #43455 /* ~"Guess not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 16.0 19.0 20.0 21.0 23.1 28.2 29.0
  SAY #43456 /* ~"What did you want to know?"~ */
  IF ~  Global("G_Test2","GLOBAL",5)
~ THEN REPLY #43457 /* ~"Thildon says that you planted the awl at the murder scene, and that you're trying to frame him for the murder because you two disagreed."~ */ DO ~SetGlobal("G_Test2","GLOBAL",6)
~ GOTO 16
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43458 /* ~"Thildon tells me that you and Bedai-Lihn are Anarchists, and that you're trying to frame him because he turned down an offer to join you."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
  IF ~~ THEN REPLY #43459 /* ~"I've found enough to make a decision."~ */ GOTO 18
  IF ~~ THEN REPLY #43460 /* ~"Tell me about yourself."~ */ GOTO 19
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43461 /* ~"Tell me about the Great Foundry."~ */ GOTO 20
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43462 /* ~"Tell me about the Great Foundry."~ */ GOTO 21
  IF ~  GlobalGT("G_Test2","GLOBAL",6)
~ THEN REPLY #43463 /* ~"Tell me about the Anarchists."~ */ GOTO 22
  IF ~~ THEN REPLY #43464 /* ~"Tell me about the people here."~ */ GOTO 23
  IF ~~ THEN REPLY #43465 /* ~"Nothing more for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.0 15.0
  SAY #43466 /* ~"Of course he'd say that! Just 'cos he's guilty and he wants to make you look someplace else! I saw him kill that man! Sure we disagreed, but that doesn't mean I want him dead. Just because he's a total berk doesn't mean he should be arrested. He should be arrested for killing Avildon! Tell him he needs proof!"~ */
  IF ~~ THEN REPLY #43468 /* ~"All right, then. I had some more questions for you."~ */ JOURNAL #39514 /* ~Saros denies framing Thildon. He says Thildon should be arrested for murder. As if I didn't already know SOMEONE should be.~ */ GOTO 15
  IF ~~ THEN REPLY #43469 /* ~"I'll do that. Farewell."~ */ JOURNAL #39514 /* ~Saros denies framing Thildon. He says Thildon should be arrested for murder. As if I didn't already know SOMEONE should be.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.1 15.1 22.0 22.1
  SAY #43470 /* ~Saros pales. "She has nothing to do with this. I did it on my own. But the truth is, Thildon shoved Avildon into the gears. I put the awl there to make sure everyone would know he was there, because I'm just a kid and no one would believe what I was saying. All right? I admit that I planted the awl. But I only did it to make sure he got punished for his crime."~ */
  IF ~~ THEN REPLY #43471 /* ~"Then I'll make a decision on how to tell Keldor about this."~ */ JOURNAL #39513 /* ~Saros admitted that he planted the awl at the scene of the murder, and he's open about it. He claims that he did it to make sure people would investigate Thildon's involvement.~ */ GOTO 18
  IF ~~ THEN REPLY #43472 /* ~"Why? Why should I not think that you're doing this to get back at him for some other crime?"~ */ JOURNAL #39513 /* ~Saros admitted that he planted the awl at the scene of the murder, and he's open about it. He claims that he did it to make sure people would investigate Thildon's involvement.~ */ GOTO 27
  IF ~~ THEN REPLY #43473 /* ~"We'll see about that. Farewell."~ */ JOURNAL #39513 /* ~Saros admitted that he planted the awl at the scene of the murder, and he's open about it. He claims that he did it to make sure people would investigate Thildon's involvement.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.2 15.2 17.0
  SAY #43474 /* ~"What is that decision?" He seems to be holding back tears.~ */
  IF ~~ THEN REPLY #43475 /* ~"You'll see when I've told him."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.3
  SAY #43476 /* ~"I'm scared. I'm afraid you're going to choose me as the killer, and I ain't!"~ */
  IF ~~ THEN REPLY #43477 /* ~"We'll see about that. Answer some other questions for me..."~ */ GOTO 15
  IF ~~ THEN REPLY #43478 /* ~"I will if you're guilty. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.4
  SAY #43479 /* ~"Everything seems to be going wrong here now... they say it's another test for life, but... I don't know..."~ */
  IF ~~ THEN REPLY #43480 /* ~"Answer some other questions for me, then..."~ */ GOTO 15
  IF ~~ THEN REPLY #43481 /* ~"Things are rough all over. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.5
  SAY #43482 /* ~"I grew up here. I played in the main foundry area and ran through the barracks. It stinks and it's loud and people can be like Thildon... but it's still home for me."~ */
  IF ~~ THEN REPLY #43483 /* ~"I see. Answer me some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #43484 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 15.6
  SAY #43485 /* ~"They're... some people came to talk to me and told me that I was the sort of person they needed, because I have access to everything and no one thinks about me being here... I never knew someone was going to die. I thought I was just supposed to be eyes and ears. But then Thildon pushed Avildon into the gears and said he'd tell on me and... I don't even know who it was who talked to me!"~ */
  IF ~  Global("G_Test2","GLOBAL",8)
~ THEN REPLY #43486 /* ~"So did you and Bedai-Lihn frame Thildon? He says you did. He seems pretty sure she was involved."~ */ GOTO 17
  IF ~  Global("G_Test2","GLOBAL",7)
~ THEN REPLY #43487 /* ~"So did you and Bedai-Lihn frame Thildon? He says you did. He seems pretty sure she was involved."~ */ DO ~SetGlobal("G_Test2","GLOBAL",8)
~ GOTO 17
END

IF ~~ THEN BEGIN 23 // from: 15.7
  SAY #43488 /* ~"They're smiths and workers. I think they mean well, but they're all so earnest and *boring.* They need to liven themselves up a bit. Like, say, the Sensates."~ */
  IF ~~ THEN REPLY #43489 /* ~"You like the Sensates, huh?"~ */ GOTO 28
  IF ~~ THEN REPLY #43490 /* ~"I can see why you might think that. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #43491 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalLT("G_Test2","GLOBAL",4)
GlobalGT("G_Test2","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #43492 /* ~"That poor smith... I can't believe what happened to him..."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
~ THEN REPLY #43493 /* ~"Do you have any idea what might have happened, or have some leads?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #43494 /* ~"It's pretty awful to be wedged into the gears like that. I had some questions for you..."~ */ GOTO 26
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
~ THEN REPLY #43495 /* ~"Do you have any idea what might have happened, or have some leads?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #64942 /* ~"Nor I. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.2 26.0 26.1
  SAY #43496 /* ~"Who told you? The supervisor? She's right. I come in here at night sometimes when there's no one around." He looks around conspiratorially for a moment, and lowers his head toward you. "I saw Thildon, creepin' out of here. The main reason I know it was him is because he dropped something." He hands you an awl, with the name 'Thildon' etched into the wooden handle.~ */
  IF ~~ THEN REPLY #43497 /* ~"Thanks. I'll be back to talk to you again, I'm sure."~ */ JOURNAL #39512 /* ~Saros gave me an awl with Thildon's name engraved on it. He told me that he found it the night of the murder, near the body.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1 30.0 31.0 32.0 33.1 34.2 35.0 36.0 37.0
  SAY #43498 /* ~"Ask whatever you want."~ */
  IF ~  Global("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Do you have any idea what might have happened, or have some leads?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 25
  IF ~  GlobalGT("Know_Saros","GLOBAL",0)
Global("G_Test2","GLOBAL",2)
~ THEN REPLY #43499 /* ~"Do you have any idea what might have happened, or have some leads?"~ */ DO ~SetGlobal("G_Test2","GLOBAL",4)
GiveItemCreate("Tawl",Protagonist,1,0,0)
~ GOTO 25
  IF ~~ THEN REPLY #43500 /* ~"Tell me about yourself."~ */ GOTO 30
  IF ~  Global("Sabotage","GLOBAL",7)
~ THEN REPLY #43501 /* ~"Tell me about the Great Foundry."~ */ GOTO 31
  IF ~  GlobalLT("Sabotage","GLOBAL",7)
~ THEN REPLY #43502 /* ~"Tell me about the Great Foundry."~ */ GOTO 32
  IF ~~ THEN REPLY #43503 /* ~"Tell me about the people here."~ */ GOTO 33
  IF ~~ THEN REPLY #43504 /* ~"Nothing more for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.1
  SAY #43505 /* ~"Because... because... I don't know why you'd think that. But I promise... go talk to him and tell him what I said, and then you can decide for yourself."~ */
  IF ~~ THEN REPLY #43506 /* ~"I'll do that. Stay here."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.0
  SAY #43507 /* ~"They know how to live life. They know what it's all about. Not like these people. They keep pretending there's some big noble purpose to it all, but I don't see it. My sister says that life is more than our senses show, but I don't see how she knows that, since all she knows is through her senses. I just don't get why people make this stuff up."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43508 /* ~"Who's your sister?"~ */ GOTO 29
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43509 /* ~"Who's your sister?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 29
  IF ~~ THEN REPLY #43510 /* ~"Hmm. I see. I had some more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #43511 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #43512 /* ~"Sarossa? She can just look at someone and see what needs adding and what needs taking away. I don't know how she does it. My father always said it was something about her ascending to another level. He said *she* was a born Godsman."~ */
  IF ~~ THEN REPLY #43513 /* ~"Interesting. Let me ask some more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #43514 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.2
  SAY #43515 /* ~"Me? I'm Saros. I grew up around here. Got to run through the Foundry, playing with stuff... I like pretty much everyone here, except for Thildon. He keeps saying I'm not raised right and that my father is a poor parent. All I know is that Thildon's the biggest sod I ever met."~ */
  IF ~~ THEN REPLY #43516 /* ~"I'm sure. I had a few more questions."~ */ GOTO 26
  IF ~~ THEN REPLY #43517 /* ~"Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.3
  SAY #43518 /* ~"Everything seems to be going wrong here now... they say it's another test for life, but... I don't know..."~ */
  IF ~~ THEN REPLY #43519 /* ~"Answer some other questions for me, then..."~ */ GOTO 26
  IF ~~ THEN REPLY #43520 /* ~"Things are rough all over. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.4
  SAY #43521 /* ~"I grew up here. I played in the main foundry area and ran through the barracks. It stinks and it's loud and people can be like Thildon... but it's still home for me."~ */
  IF ~~ THEN REPLY #43522 /* ~"I see. Answer me some other questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #43523 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.5
  SAY #43524 /* ~"They're smiths and workers. I think they mean well, but they're all so earnest and *boring.* They need to liven themselves up a bit. Like, say, the Sensates."~ */
  IF ~~ THEN REPLY #43525 /* ~"You like the Sensates, huh?"~ */ GOTO 34
  IF ~~ THEN REPLY #43526 /* ~"I can see why you might think that. I had some other questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #43527 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #43528 /* ~"They know how to live life. They know what it's all about. Not like these people. They keep pretending there's some big noble purpose to it all, but I don't see it. My sister says that life is more than our senses show, but I don't see how she knows that, since all she knows is through her senses. I just don't get why people make this stuff up."~ */
  IF ~  GlobalGT("Know_Saros","GLOBAL",1)
~ THEN REPLY #43529 /* ~"Who's your sister?"~ */ GOTO 35
  IF ~  Global("Know_Saros","GLOBAL",1)
~ THEN REPLY #43530 /* ~"Who's your sister?"~ */ DO ~SetGlobal("Know_Saros","GLOBAL",2)
~ GOTO 35
  IF ~~ THEN REPLY #43531 /* ~"Hmm. I see. I had some more questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #43532 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #43534 /* ~"Sarossa? She can just look at someone and see what needs adding and what needs taking away. I don't know how she does it. My father always said it was something about her ascending to another level. He said *she* was a born Godsman."~ */
  IF ~~ THEN REPLY #43535 /* ~"Interesting. Let me ask some more questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #43536 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 36 // from:
  SAY #43537 /* ~"You again, huh? What do you want?"~ */
  IF ~~ THEN REPLY #43538 /* ~"I just wanted to ask a few questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #43539 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #7 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 37 // from:
  SAY #43540 /* ~You see a sandy-haired youth. He's on the cusp between adolescence and adulthood, and from his eyes, it looks like he's trying to be as adult as possible without having the slightest idea how - in other words, he seems innocent. "Hey, stranger. What can I do for you?"~ */
  IF ~~ THEN REPLY #43541 /* ~"You could answer a few questions for me..."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #43542 /* ~"Nothing, thanks. Farewell."~ */ DO ~SetGlobal("Know_Saros","GLOBAL",1)
~ EXIT
END
