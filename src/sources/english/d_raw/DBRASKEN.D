// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRASKEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRASKEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45442 /* ~In a loud, booming voice Brasken asks: "What in the name of the abyss are you doing in my house?! Leave now, before I make you even more ugly than you already are."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45443 /* ~"I was asked to deliver this box into your care."~ */ GOTO 8
  IF ~~ THEN REPLY #45445 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 2 3 14 7 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45446 /* ~"What?! You again! Unless you have some business with me, I suggest you leave my house immediately."~ */
  IF ~  Global("FedEx","Global",2)
PartyHasItem("DBox")
~ THEN REPLY #45447 /* ~"I was told to deliver this box into your care."~ */ GOTO 8
  IF ~~ THEN REPLY #45448 /* ~"Sorry, wrong house. I'll be on my way."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 14 7 5 even though they appear after this state */
~  GlobalGT("FedEx","Global",2)
~ THEN BEGIN 2 // from:
  SAY #45449 /* ~"Be gone, you fool! I've already told you all I know about Moridor's Box."~ */
  IF ~~ THEN REPLY #45450 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 7 5 even though they appear after this state */
~  GlobalGT("Demonbox","Global",2)
~ THEN BEGIN 3 // from:
  SAY #45451 /* ~"There's a rumor going around the Hive that some cutter went and killed the demon that was trapped in Moridor's Box. They say the battle with the demon left horrible scars all over his body. That cutter wouldn't happen to be you, would it?"~ */
  IF ~~ THEN REPLY #45452 /* ~"Of course; who else do you think could've done it?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45453 /* ~With a great booming laugh, "Brazen as well as brave! I like that. You'll become a legend when word of your heroic deeds spreads. Let me be one of the first to congratulate you. Come... let us drink together so that you may tell the tale of your courage."~ */
  IF ~~ THEN REPLY #45454 /* ~"I'll gladly share a tankard or two with you."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45455 /* ~"Maybe some other time. I've much to do. Farewell."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Drunk","Global",1)
~ THEN BEGIN 5 // from:
  SAY #45456 /* ~"The great cutter has returned. Have you reconsidered that drink? I would greatly like to hear of your heroic deed."~ */
  IF ~~ THEN REPLY #45457 /* ~"I'll gladly share a tankard or two with you."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(1)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45458 /* ~"Maybe some other time. I've much to do. Farewell."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0 14.0
  SAY #45459 /* ~After a few tankards, a few songs, a few jokes, you've come to like Brasken immensely. In fact, at the moment you seem to like everyone. Soon Brasken falls to the floor in a drunken stupor. You realize it's time to go.~ */
  IF ~~ THEN REPLY #45460 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drunk","Global",2)
~ THEN BEGIN 7 // from:
  SAY #45461 /* ~"Oh, my aching head! I don't think I'll ever recover."~ */
  IF ~~ THEN REPLY #45462 /* ~Leave Brasken to his misery.~ */ DO ~SetAnimState(Myself,ANIM_MIMEDIE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0
  SAY #45463 /* ~"Well, why didn't you say so? So, hand it over and you can be on your way." As you present the box to Brasken, his expression changes from one of anticipation to that of amusement. "Whoa there! I won't fall for that trick a second time. Put that thing away and leave." ~ */
  IF ~~ THEN REPLY #45464 /* ~"I don't understand; why won't anyone take this box? First Ku'atraa, and now you."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45465 /* ~"Did you say Ku'atraa?" Brasken lets out a great bellow of laughter. "Why, that's the fellow who bought the box off me. Thought he got the best of me when he bought it. I guess he figured the gem alone was more than worth the price he paid me. Poor fellow didn't realize what he'd gotten himself into till it was too late."~ */
  IF ~~ THEN REPLY #45466 /* ~"Just what's so horrible about this box?"~ */ GOTO 10
  IF ~~ THEN REPLY #46623 /* ~"I don't care about the history of this thing. Just tell me how to get rid of it."~ */ GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #45467 /* ~"You mean you really don't know anything about that box you're holding? Well, I guess it won't hurt to tell you what I know. First off, so you don't get any ideas in your head, the curse on that box only affects the current owner of the box and to be the owner of the box you have to willingly take possession of it."~ */
  IF ~~ THEN REPLY #45468 /* ~"There goes the idea of just leaving the box for someone else to find... so, what's in the box?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #45469 /* ~"Now that is a good question. That box has been around the Hive since anyone can remember. There are many rumors flying about. As you can imagine, over time the truth has been warped a little bit further with each retelling of the story."~ */
  IF ~~ THEN REPLY #45470 /* ~"Go on."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45471 /* ~"I've heard many a story about that box, and they all seem to have a recurring theme. The name given to that foul thing is 'Moridor's Box,' and the owner of the box will die should he or anyone else open it. As to the contents, who knows? Some say it's an ancient dragon, while others say it's the evil soul of Moridor himself. I cannot tell for sure, but just by looking at it any soul can tell it's something evil and one would have to be a fool to open it."~ */
  IF ~~ THEN REPLY #45472 /* ~"What am I supposed to do with it?"~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 9.1 12.0
  SAY #45473 /* ~"I would suggest you go see Shilandra. She lives in the northeastern region of the Hive. It was from her that I 'won' the box. Who knows, maybe she will have more knowledge of what to do with it. Or you can find some other clueless berk to take it off your hands. It's up to you. I wish you luck."~ */
  IF ~~ THEN REPLY #45474 /* ~"Farewell."~ */ DO ~SetGlobal("FedEx","Global",3)
SetGlobal("Beta","Global",2)
SetGlobal("Delta","Global",1)
AddexperienceParty(250)
~ JOURNAL #60387 /* ~From my talks with Brasken, I have learned much. It seems I am the unlucky owner of a cursed box, as if I didn't already have enough troubles to deal with. The item of my disdain now has a name. It's called Moridor's Box and it seems that the person who willingly takes possession of the box is cursed to die should the box be opened. As to the contents, that still remains a mystery. Brasken has suggested I pay a visit to Shilandra who lives by the Mortuary up in the northeastern section of the Hive. Am I doomed to forever seek out previous owners of this thing?~ */ EXIT
END

IF WEIGHT #2 ~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 14 // from:
  SAY #45475 /* ~"The news is everywhere! Congratulations on breaking the curse of Moridor's Box. I must admit to being a bit skeptical that an ugly berk such as you could accomplish such a thing. Mind you, I still think you're uglier than a baku's arse... but I've got respect for what you've done. Come; share a drink with me so you can tell me how you did it."~ */
  IF ~~ THEN REPLY #45476 /* ~"I'll gladly share a tankard or two with you."~ */ DO ~SetGlobal("Drunk","Global",2)
FadeToColor([20.0],0)
Wait(3)
SetAnimState(Myself,ANIM_MIMEDIE)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ GOTO 6
  IF ~~ THEN REPLY #45477 /* ~"Maybe some other time. I've much to do. Farewell."~ */ DO ~SetGlobal("Drunk","Global",1)
~ EXIT
END
