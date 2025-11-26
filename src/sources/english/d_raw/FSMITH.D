// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : FSMITH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~FSMITH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #4729 /* ~"Aren't you supposed to be gone? Guards! Escort this berk out of here!"~ */
  IF ~~ THEN REPLY #4730 /* ~Leave.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #4731 /* ~"Help! Guards! Guards!"~ */
  IF ~~ THEN REPLY #4732 /* ~Attack.~ */ EXIT
  IF ~~ THEN REPLY #4733 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 2 // from:
  SAY #4734 /* ~"Powers above! Our machinery is destroyed! Where'll the factol get the money to pay us now? It's a good thing we're devoted to the cause. Well, it's back to work for me... doubly hard, this time. Hell of a test, I say."~ */
  IF ~~ THEN REPLY #4735 /* ~Leave.~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 3 // from:
  SAY #4736 /* ~"Hail, brother! I wish I could take the time to talk to you, but molten steel waits for no one. If you need something, speak to the supervisors over there... they have time."~ */
  IF ~~ THEN REPLY #4737 /* ~"All right. Good luck."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("G_Test2","GLOBAL",0)
GlobalLT("G_Test2","GLOBAL",9)
~ THEN BEGIN 4 // from:
  SAY #4738 /* ~"So you're investigating the murder, eh? I can't say I was too sorry to see that bastard taken down, but then, there wasn't anyone who didn't have it in for that bubber. Where should you look? I don't know."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4739 /* ~"But you have more you'd like to tell me, don't you?"~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4740 /* ~"But you have more you'd like to tell me, don't you?"~ */ GOTO 6
  IF ~~ THEN REPLY #4741 /* ~"All right. Can you give me pointers on this forge again?"~ */ GOTO 7
  IF ~~ THEN REPLY #4742 /* ~"All right. Thanks for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4743 /* ~"Yeah, well..." The smith looks around furtively. "Your best bet might be to start with the supervisor. She looks a little piqued these days. I don't think she did it, but I think she might have an idea who did."~ */
  IF ~~ THEN REPLY #4744 /* ~"The supervisor? Where could I find her?"~ */ GOTO 8
  IF ~~ THEN REPLY #4745 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #4746 /* ~"No, that's pretty much all I have to say to you."~ */
  IF ~~ THEN REPLY #4747 /* ~"All right. Can you give me pointers on how to use the forge again?"~ */ GOTO 7
  IF ~~ THEN REPLY #4748 /* ~"All right. Thanks for your time."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 18 20 even though they appear after this state */
~  Global("G_Test1","GLOBAL",1)
~ THEN BEGIN 7 // from: 4.2 6.0
  SAY #4749 /* ~"You want to work the forge. First you'll need a protective apron. Then you'll need to find some tongs, a hammer, and a free anvil. Then you get a lump of iron, place it in the fire until it gets hot enough to shape, and then pound the devil out of it on the anvil. When you've achieved the shape you need, dunk it in the water bucket nearby. That's the crash course, mind you... you need some skill to handle it."~ */
  IF ~~ THEN REPLY #4750 /* ~"How hard can that be?"~ */ GOTO 9
  IF ~~ THEN REPLY #4751 /* ~"All right. I have some other questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4752 /* ~"All right. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 10.2
  SAY #4753 /* ~"You can usually find her down by the clerk's office... watching us. Hells, I guess it's her job, but I can be trusted to do it."~ */
  IF ~~ THEN REPLY #4754 /* ~"Thanks. I had some other questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4755 /* ~"If you could be trusted to do it, you wouldn't need a supervisor. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #4756 /* ~"I'd imagine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #4759 /* ~"You'd be surprised, berk. Get out of here. I'm busy."~ */
  IF ~~ THEN REPLY #4758 /* ~Leave.~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 19 17 18 20 even though they appear after this state */
~  True()
~ THEN BEGIN 10 // from: 7.1 8.0 11.0 13.0 14.0
  SAY #4760 /* ~"Yeah? What? Hurry it up. I'm busy here."~ */
  IF ~~ THEN REPLY #4761 /* ~"Who are you?"~ */ GOTO 11
  IF ~  Global("Receipt","GLOBAL",1)
~ THEN REPLY #4762 /* ~"Where can I find the clerk's office?"~ */ GOTO 13
  IF ~~ THEN REPLY #4763 /* ~"Where's your supervisor?"~ */ GOTO 8
  IF ~~ THEN REPLY #4764 /* ~"What do you do around here?"~ */ GOTO 14
  IF ~  GlobalGT("Join_Godsmen","GLOBAL",0)
~ THEN REPLY #4765 /* ~"What can you tell me about the Godsmen?"~ */ GOTO 15
  IF ~~ THEN REPLY #4791 /* ~"Forget it."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #4766 /* ~"What I am is too busy to stand around gabbing with folks. You got a purpose here?"~ */
  IF ~~ THEN REPLY #4767 /* ~"Well, yes."~ */ GOTO 10
  IF ~~ THEN REPLY #4768 /* ~"No. Not really."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.5 11.1
  SAY #4769 /* ~"Then stop wasting my time. I'm on a schedule. Good day."~ */
  IF ~~ THEN REPLY #4770 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #4771 /* ~"You see that room down there with the desk in it and the old guy sitting behind it? That's the clerk's office, and the clerk sitting in there. You need anything else, or can I get back to work?"~ */
  IF ~~ THEN REPLY #4772 /* ~"I have more questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4773 /* ~"No, that's it. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.3
  SAY #4774 /* ~"Oh, I sit around with my feet up all day. Look, I don't mean to be rude, but it's fairly obvious what I'm doing here - I'm forging steelwork. And if I don't get back to it soon, I'll have to start over."~ */
  IF ~~ THEN REPLY #4775 /* ~"All right, all right. I have a few more questions."~ */ GOTO 10
  IF ~~ THEN REPLY #4776 /* ~"Thanks for your time. So long."~ */ EXIT
  IF ~~ THEN REPLY #4777 /* ~"No need for that attitude, 'friend.' Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.4
  SAY #4778 /* ~The smith stops working and looks at you, as if measuring you. "A Godsman is a basher who believes that we can all be gods. Even you. Don't matter if it's for good or for ill - we all go through our existences learning how to evolve ourselves into ever-more perfect forms. Another definition of Godsman is someone who starts to get peery of people who ask him questions they really should know the answers to."~ */
  IF ~~ THEN REPLY #4779 /* ~"So what you're saying is that we've got tests to overcome and we become greater because of it?"~ */ GOTO 16
  IF ~~ THEN REPLY #4780 /* ~"So what you're saying is that you're not the best person to talk to about this right now?"~ */ GOTO 16
  IF ~~ THEN REPLY #4781 /* ~"Thanks. I'll be off now."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #4782 /* ~"What I'm saying is that you should talk t' one of the factotums through that door over in the east wall - they've got nothing better to do with their time. I have. Good day."~ */
  IF ~~ THEN REPLY #4783 /* ~"I have a few more questions."~ */ EXIT
  IF ~~ THEN REPLY #4784 /* ~Leave.~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 18 20 even though they appear after this state */
~  GlobalGT("Forge","GLOBAL",0)
GlobalLT("Forge","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #4785 /* ~"Friend, I think you've managed to work that forge enough. Everyone believes you've got... errr... some skill at it. Stand aside and let someone who really needs to use it at it."~ */
  IF ~~ THEN REPLY #4786 /* ~"All right, fine."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Sabotage","GLOBAL",7)
~ THEN BEGIN 18 // from:
  SAY #4787 /* ~"Powers above! Our machinery is destroyed! Where'll the factol get the money to pay us now? It's a good thing we're devoted to the cause. Well, it's back to work for me... doubly hard, this time. Hell of a test, I say."~ */
  IF ~~ THEN REPLY #4788 /* ~Leave.~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("GearRepair","GLOBAL",0)
GlobalLT("GearRepair","GLOBAL",5)
~ THEN BEGIN 19 // from:
  SAY #4789 /* ~"Powers above! Our machinery is destroyed! Where'll the factol get the money to pay us now? It's a good thing we're devoted to the cause. Well, it's back to work for me... doubly hard, this time. Hell of a test, I say."~ */
  IF ~~ THEN REPLY #4790 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 ~  CreatureInArea("AR0503")
~ THEN BEGIN 20 // from:
  SAY #64514 /* ~He gives you a quick glare, and refocuses his attention on the speaker. "Shh! I'm tryin' to listen to Keldor. I want to learn, and you're interruptin' me."~ */
  IF ~~ THEN REPLY #64515 /* ~"Sorry. Farewell."~ */ EXIT
END
