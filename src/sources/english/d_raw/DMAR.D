// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 1 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45076 /* ~Your first impression of Mar is that he needs a long bath, preferably away from any creature that has any sense of smell. You can almost see the stench waft from his body in sinister yellow tendrils. He motions towards you frantically in an effort to get you to come over and talk to him.~ */
  IF ~~ THEN REPLY #45077 /* ~Approach this person and hear what he has to say.~ */ GOTO 4
  IF ~~ THEN REPLY #45399 /* ~Hold your breath and leave.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 2 20 16 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("FedEx","Global",0)
~ THEN BEGIN 1 // from:
  SAY #45400 /* ~You brace yourself for the stench as you approach Mar. "Ye be doing Mar a fav'r, yes? A box ye need be deliver'n fer me."~ */
  IF ~~ THEN REPLY #45401 /* ~"I'll deliver your package for you."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #45402 /* ~"Why do you need me to deliver this package for you?"~ */ GOTO 5
  IF ~~ THEN REPLY #45403 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 16 10 even though they appear after this state */
~  GlobalGT("FedEx","Global",0)
~ THEN BEGIN 2 // from:
  SAY #45404 /* ~Mar's eyes take on a wild look as he sees you approaching. In a high screeching voice he asks. "What ye be doing back 'ere! Don't come back till ye be deliver'n the box."~ */
  IF ~  Global("FedEx","Global",2)
Global("Demonbox","Global",0)
~ THEN REPLY #45405 /* ~"The person who you asked me to deliver this box to ran away. What now?"~ */ GOTO 8
  IF ~  Global("FedEx","Global",10)
~ THEN REPLY #45406 /* ~"I got rid of the box."~ */ DO ~SetGlobal("FedEx","Global",11)
~ GOTO 11
  IF ~  Global("Demonbox","Global",4)
~ THEN REPLY #45407 /* ~"I killed the demon in the box."~ */ GOTO 18
  IF ~  Global("Demonbox","Global",3)
~ THEN REPLY #45408 /* ~"I killed the demon in the box."~ */ GOTO 19
  IF ~  Global("Demonbox","Global",1)
~ THEN REPLY #45409 /* ~"I opened the box and a fiend appeared. I ran."~ */ GOTO 3
  IF ~  !Global("FedEx","Global",2)
!Global("FedEx","Global",10)
GlobalGT("FedEx","Global",0)
Global("Demonbox","Global",0)
~ THEN REPLY #45410 /* ~"Nobody wants this box. Take it back."~ */ GOTO 9
  IF ~  !Global("FedEx","GLOBAL",10)
Global("Demonbox","Global",2)
~ THEN REPLY #45411 /* ~"I left the Hive and nothing happened."~ */ GOTO 17
  IF ~~ THEN REPLY #45412 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.4
  SAY #45413 /* ~"Ye crazy fool! Ye be signing yer own death sentence by opening that accursed box! Run, if ye knows what's good fer ye!" Mar takes off running.~ */
  IF ~~ THEN REPLY #45414 /* ~"Farewell."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39511 /* ~I have made two mistakes. The first mistake was to ignore Mar's warnings about opening the box. The second mistake was to run away from the fiend once it appeared. I cannot undo the first mistake, but I can correct the second. I must kill the fiend.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #46322 /* ~A look of excitement crosses his face as you approach. "Thank ye fer stoppin'. Me name is Mar, and I've a fav'r to ask of ye."~ */
  IF ~~ THEN REPLY #46323 /* ~"I'm listening."~ */ GOTO 5
  IF ~~ THEN REPLY #46324 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 4.0
  SAY #46325 /* ~"'Tis a matter of life or death! I must be deliver'n this 'ere box or it'd be me head fer sure! 'Tis me bad luck that I twisted me leg something fierce. So will ye help me out by deliver'n this 'ere box fer me?"~ */
  IF ~~ THEN REPLY #46326 /* ~"I'll deliver the box for you."~ */ DO ~SetGlobal("FedEx","Global",1)
SetGlobal("Alpha","Global",1)
~ GOTO 6
  IF ~~ THEN REPLY #46327 /* ~"No."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 5.0
  SAY #46328 /* ~Mar slowly takes out a small box from within the recesses of his ragged clothing. For the briefest of moments, you see a look of regret cross his face... then it is gone, as he looks at you and hands you the box. A slight shimmer surrounds the box as both you and Mar touch it. A sigh of relief is heard as Mar releases the box into your care.~ */
  IF ~~ THEN REPLY #46329 /* ~"What now?"~ */ DO ~GiveItemCreate("DBox",Player1,1,0,0)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46330 /* ~"This be need'n to be deliver'd to Ku'atraa. He can usually be found somewheres down in the southeastern section of the Hive. Oh, and lest ye try to say I didn't warn ye: whatever happens, DON'T OPEN THE BOX! And don't leave the Hive with the box. Now be off with ye!"~ */
  IF ~~ THEN REPLY #46331 /* ~"I'll be back when I deliver the box. Farewell."~ */ DO ~SetGlobal("Notalk","AR0100",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT1",FALSE)
~ JOURNAL #39481 /* ~I have accepted the task of delivering a strange box to a person named Ku'atraa. Mar says this fellow can usually be found down in the southeastern section of the Hive.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0
  SAY #46461 /* ~"'Tis not me problem anymore. The box is magically bound to ye until it gets delivered. I be suggest'n that ye deliver it to someone! Now get yerself aways from me until ye gets rid of that thing!"~ */
  IF ~  Global("FedEx","Global",2)
~ THEN REPLY #46462 /* ~Looks like you're on your own. Didn't Ku'atraa mention someone else you could give this box to?~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
  IF ~  GlobalGT("FedEx","Global",2)
~ THEN REPLY #46463 /* ~What in the hells is in this box...~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5
  SAY #46464 /* ~Mar recoils in fear. "No! I will not touch that cursed box agin! Gets it away from me! Ye willingly accepted the box. Keep it or gives it to someones else, it matters not to me. But I be tell'n ye one thing: I'd rather die than be stuck with that box agin! Now leave me alone!"~ */
  IF ~~ THEN REPLY #46465 /* ~"When I'm done dealing with this box, I'll come back to deal with you. Farewell."~ */ DO ~SetGlobal("Notalk","AR0100",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("FedEx","Global",9)
~ THEN BEGIN 10 // from:
  SAY #46466 /* ~"I've said all I've gots to say to ye fer now."~ */
  IF ~~ THEN REPLY #46467 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #46468 /* ~"It does me heart good to hear ye say that. Before ye kills me for the horrible deed of trick'n ye into taking that box, please let me try to explain..."~ */
  IF ~~ THEN REPLY #46469 /* ~"You're a dead man."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~My justice is swift and without mercy. I have made Mar pay for his crimes with his life. My only wish is to continue on my journey, I no longer wish to dwell over magicked boxes.~ */ EXIT
  IF ~~ THEN REPLY #46470 /* ~"I'm listening. Explain yourself."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #46471 /* ~"The long and the short of it be that that box is been around long as anyone can remembers. Chant is some folks were fightin' and when they was done, a huge demon was imprisoned inside the box. Other folks say an evil wizard made it just fer seein' others suffer. No one rightly knows what the truth behind the box be. But the owner of the box will die should it be opened."~ */
  IF ~~ THEN REPLY #46472 /* ~"Why didn't the owner just put the box where no one could find it?"~ */ GOTO 13
  IF ~~ THEN REPLY #46473 /* ~"I don't want to hear it. What do I get out of this?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #46474 /* ~"Aye, seems it should have been as simple as that. But who among us could live with a death sentence lingering over their head? T'would drive any sane man over the edge, having to worry about the whereabouts of that damnable box at all times."~ */
  IF ~~ THEN REPLY #46475 /* ~"Why me?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #46476 /* ~"First, I haven't seen ye around 'ere before. Ye sees, I needed a clueless berk such as yerself to *accept* the box and become the new owner. Everyones around 'ere knows not to take the box; not fer any price. Secondly, if ye didn't examine the box when ye had it, ye would've noticed that whatever magics were placed on it were weakening. With me being the current owner and all, ye can sees I needed to pass it on right quickly. Besides, if anyone looked ready to pass on to the next realm it was ye."~ */
  IF ~~ THEN REPLY #46477 /* ~"You want to talk about passing on to the next realm? Keep talking or you'll find out about it."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #46478 /* ~"Obviously I picked a cutter of no small means. Surely this has been but a minor inconvenience to one such as ye. I offer this weapon and some jink to line yer purse as a reward fer yer troubles. 'Tis all I own... and coincidentally, t'was what that rat Ku'atraa used to get me to take possession of the box."~ */
  IF ~~ THEN REPLY #46479 /* ~"I'll kill you and take the reward anyway."~ */ DO ~GivePartyGold(500)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALEvil_Mar_1","GLOBALGood",-1)
~ JOURNAL #60399 /* ~My justice is swift and without mercy. I have made Mar pay for his crimes with his life. My only wish is to continue on my journey, I no longer wish to dwell over magicked boxes.~ */ EXIT
  IF ~~ THEN REPLY #46480 /* ~"Give me my reward and then leave me."~ */ DO ~GiveItem("Hax",Protagonist)
AddexperienceParty(1250)
GivePartyGold(500)
~ JOURNAL #39484 /* ~Although it goes against my better judgement, I have decided to forgive Mar for what he has done. Even though I seek to regain my lost memories, this is one adventure I wish to forget.~ */ EXIT
END

IF WEIGHT #1 ~  Global("FedEx","Global",11)
~ THEN BEGIN 16 // from:
  SAY #46481 /* ~"People round 'ere can rest easier knowing that ye destroyed that cursed box. Thanks again!"~ */
  IF ~~ THEN REPLY #46482 /* ~"I was glad I could help. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.6
  SAY #46483 /* ~"You blink'n fool! I told ye not to leave the Hive. Quickly; get ye self away from me before it comes to get ye!"~ */
  IF ~~ THEN REPLY #46484 /* ~Mar runs away.~ */ DO ~SetGlobal("Boxleft","Global",1)
SetGlobal("Gamma","Global",1)
StartCutSceneMode()
StartCutSceneEx("0100CUT2",FALSE)
~ JOURNAL #39482 /* ~Apparently, by leaving the Hive, I have released the creature that was entrapped in the box. I'm not sure why, but I fear whatever it was will come seeking the last owner of the box. Just to be safe, I best watch my back.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.2
  SAY #46485 /* ~"Ye opened the box and are still alive to tells about it! Er... I means, I told ye nots to open the blasted thing. Fer failing to deliver the box proper like, I'm afraid I can't be pay'n ye. Now gets yerself out of me sight."~ */
  IF ~  Global("FedEx","Global",1)
~ THEN REPLY #46486 /* ~"Farewell."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39507 /* ~I told Mar I had opened the box and killed the fiend within. At first I was angry at Mar for not telling me what was contained in the box, but then again it was my own fault for not heeding his warnings. In the future I must learn to keep my curiosity in check.~ */ EXIT
  IF ~  GlobalGT("FedEx","Global",1)
~ THEN REPLY #46487 /* ~"Farewell."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseB","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39505 /* ~I told Mar I had opened the box after coming to my wits end about who to deliver it to. He now refuses to pay me for my troubles. My morality is in turmoil, for I believe I should have been compensated in some small way. After all, I did try to deliver the box... it was just that no one would accept it from me. Then again, I did open the box despite Mar's warnings not to. Confused, I left Mar without payment or comment, I am just glad to be finally done with this business of the box and the fiend contained therein.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.3
  SAY #46488 /* ~"I did warn ye not to leave the Hive proper with that box. Amazed I be, that the fiend did not tear ye to shreds. If ye be coming back for me to pay ye, I'm tell'n ye I won't! Deal was fer ye to deliver the box, not fer kill'n the fiend within."~ */
  IF ~~ THEN REPLY #46489 /* ~"Farewell."~ */ DO ~SetGlobal("FedEx","Global",9)
SetGlobal("ReleaseH","Global",1)
SetGlobal("Gamma","Global",1)
~ JOURNAL #39504 /* ~I told Mar that I killed the fiend I released when I left the Hive. Although impressed with my ability to kill the fiend, Mar refuses to pay me for my services. I can hardly argue the point with him, since I failed to heed his warnings and did not deliver the box as instructed.~ */ EXIT
END

IF WEIGHT #2 ~  Global("notalk","AR0100",1)
~ THEN BEGIN 20 // from:
  SAY #46490 /* ~"I've said all I've gots to say to ye fer now."~ */
  IF ~~ THEN REPLY #46491 /* ~"Farewell."~ */ EXIT
END
