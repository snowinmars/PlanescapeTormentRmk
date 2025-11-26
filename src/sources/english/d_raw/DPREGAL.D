// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPREGAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPREGAL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Alley_Face_SC","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52613 /* ~You stare in awe at the bizarre spectacle before you. What had appeared to be an ordinary, unremarkable bricked wall now throbs and pulsates with movement. The wall expands with curious elasticity, heaving outward as if some unseen force were trying to push its way through the barrier from the other side. Slowly, the undulating mass begins to settle, its curves becoming more and more pronounced, and you find yourself at eye-level with the stony caricature of a human face.~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52645 /* ~"What is that?"~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ EXTERN ~DANNAH~ 256
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52646 /* ~Wait and see what happens next.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52647 /* ~Ignore the face. Leave.~ */ DO ~SetGlobal("Alley_Face_SC","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #52614 /* ~Suddenly, a strong breeze begins to blow around you and the air is filled with an eerie sighing. The rushing wind grows stronger and you can make out other sounds as well: the creaking of boards, the rustling of leaves, and the grinding of stone upon stone. After a few moments, the clamor ceases to be a cacophony of individual noises and begins to blend into one articulate sound. You can make out a voice, a voice that speaks softly, yet seems to come from all around you at once. "YOU? IT CANNOT BE YOU."~ */
  IF ~~ THEN REPLY #52648 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #52649 /* ~"What?"~ */ GOTO 2
  IF ~~ THEN REPLY #52650 /* ~"Do you know me?"~ */ GOTO 2
  IF ~~ THEN REPLY #52651 /* ~"You must have mistaken me for someone else. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2 1.3
  SAY #52615 /* ~The wind around you has stopped, but the voice is still somehow present. "YOU ARE RESTORED AGAIN? I SAW YOU DESTROYED."~ */
  IF ~~ THEN REPLY #52652 /* ~"Destroyed? Where?"~ */ GOTO 6
  IF ~~ THEN REPLY #52653 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #52654 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #52655 /* ~"Where am I?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.0 5.0
  SAY #52616 /* ~"I AM I." The voice is as expressionless as the stone face before you.~ */
  IF ~~ THEN REPLY #52656 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #52657 /* ~"Where am I?"~ */ GOTO 5
  IF ~~ THEN REPLY #52658 /* ~"You said you saw me destroyed? Where?"~ */ GOTO 6
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 4 // from: 2.2 3.0 5.1
  SAY #52617 /* ~"I AM I." The voice is as expressionless as the stone face before you.~ */
  IF ~~ THEN REPLY #52659 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #52660 /* ~"Where am I?"~ */ GOTO 5
  IF ~~ THEN REPLY #52661 /* ~"You said you saw me destroyed? Where?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 2.3 3.1 4.1
  SAY #52618 /* ~"YOU STAND ON ME, IN ME. THE STONES, MORTAR, THE AIR... ALL ME UNDIVIDED."~ */
  IF ~~ THEN REPLY #52662 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #52663 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #52664 /* ~"You said you saw me destroyed? Where?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.2 4.2 5.2
  SAY #52619 /* ~"I SAW YOU DESTROYED HERE, IN FRONT OF ME. I SEE ALL WITHIN ME."~ */
  IF ~~ THEN REPLY #52665 /* ~"Do you know what happened to me?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52620 /* ~"THINGS THAT CAST NO SHADOW... WERE SHADOW. THEY ROSE AROUND YOU. TORE YOU DOWN. DO YOU NOT REMEMBER?" You concentrate on the strange voice composed of sounds around you. Somewhere, in the deepest recesses of your mind, there is a brief glimmer of recollection. You feel as though there is something vaguely familiar about the sounds.~ */
  IF ~~ THEN REPLY #52719 /* ~Close your eyes and try to remember.~ */ DO ~StartCutSceneEx("0405cut8",FALSE)
~ EXIT
END

IF WEIGHT #2 ~  Global("Alley_Face_SC","GLOBAL",1)
Global("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #52621 /* ~"YES... YOU REMEMBER." The voice of the Alley rings in your ears, scattering the images from your mind and returning you back to the present. "DESTROYED. AS SOON I SHALL BE. I CANNOT DELAY DIVISION MUCH LONGER. PRESSURE BUILDS. SOON STONES WILL CRUMBLE AND THE FLOATING ONES WILL REPAIR ME TO DESTRUCTION."~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #52667 /* ~"I don't understand."~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #52668 /* ~"You're dying?"~ */ GOTO 9
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52669 /* ~"Floating Ones?"~ */ EXTERN ~DANNAH~ 257
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #52622 /* ~"PRESSURE IS TOO MUCH. TOO MANY PLACES FOLDED INSIDE. NOT ENOUGH SPACE. MUST DIVIDE."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #52670 /* ~"Divide?"~ */ EXTERN ~DANNAH~ 258
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #52671 /* ~"Divide?"~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #52623 /* ~The voice continues. "HELP ME TO DIVIDE. BRANCH OUT. EXPAND. NEW APERATURES WILL OPEN. YOU MAY USE THEM TO TRAVEL TO THE LOWER WARD."~ */
  IF ~  Global("Dabus_Trap","GLOBAL",0)
!Dead("ADabus")
~ THEN REPLY #52672 /* ~"What do you need to divide?"~ */ GOTO 11
  IF ~  Global("Dabus_Trap","GLOBAL",2)
!Dead("ADabus")
~ THEN REPLY #52673 /* ~"What do you need to divide?"~ */ GOTO 13
  IF ~  Dead("ADabus")
~ THEN REPLY #52674 /* ~"What do you need to divide?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52624 /* ~"THE FLOATING ONE IS UPON ME. REPAIRING. IT PREVENTS ME FROM DIVIDING. I UNDO ITS REPAIRS. BUT IT RETURNS AGAIN AND AGAIN. REPAIRS ANEW. MUST REMOVE FLOATING ONE."~ */
  IF ~~ THEN REPLY #52675 /* ~"You want me to *kill* the dabus in the Alley?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52625 /* ~"REMOVE IT. ONLY THEN CAN I DIVIDE."~ */
  IF ~~ THEN REPLY #52676 /* ~"Very well, I'll *remove* the dabus for you."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",1)
~ JOURNAL #52683 /* ~I've discovered that the Alley of Lingering Sighs is not haunted after all. It is alive. It spoke to me and, from what I gathered, it is pregnant and needs my help to give birth. Apparently, a dabus is continually making repairs to the Alley, preventing it from dividing. I have agreed to find a way to get rid of the dabus. In exchange, the Alley has promised to open up the way to the Lower Ward.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #52626 /* ~"THE FLOATING ONE IS NO LONGER UPON ME. IT NO LONGER REPAIRS. NO LONGER INTERFERES."~ */
  IF ~~ THEN REPLY #52687 /* ~"The dabus back in the Alley? Yes, I told him about the dead dabus I found and he left to seek it out."~ */ DO ~AddexperienceParty(15000)
~ JOURNAL #52682 /* ~I've discovered that the Alley of Lingering Sighs is not haunted after all. It is alive. It spoke to me and, from what I gathered, it is pregnant and needs my help to give birth. Apparently, the dabus I informed about its dead brethren was making repairs that prevented the Alley from dividing. When it went to investigate, the Alley trapped him in the same building.~ */ GOTO 21
END

IF ~~ THEN BEGIN 14 // from: 10.2
  SAY #52627 /* ~"THE FLOATING ONE IS DESTROYED. IT NO LONGER REPAIRS. NO LONGER INTERFERES."~ */
  IF ~~ THEN REPLY #52692 /* ~"The dabus back in the Alley? Yes, he is gone... I killed him."~ */ DO ~AddexperienceParty(1500)
~ JOURNAL #52681 /* ~I've discovered that the Alley of Lingering Sighs is not haunted after all. It is alive. It spoke to me and, from what I gathered, it is pregnant and needs my help to give birth. Apparently, the dabus I killed was making repairs that prevented the Alley from dividing.~ */ GOTO 18
END

IF WEIGHT #3 ~  Global("Alley_Face_SC","GLOBAL",1)
GlobalGT("Pregnant_Quest","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #52628 /* ~As you approach the stone face, the various ambient sounds of the Alley once again assault your ears, and through them the voice speaks. "YOU HAVE RETURNED."~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
GlobalLT("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52693 /* ~"The dabus still remains... I can't seem to get rid of him."~ */ GOTO 16
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
Dead("ADabus")
~ THEN REPLY #52694 /* ~"I've killed the dabus. He won't be interfering any longer."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
  IF ~  Global("Pregnant_Quest","GLOBAL",1)
!Dead("ADabus")
Global("Dabus_Trap","GLOBAL",2)
~ THEN REPLY #52695 /* ~"I spoke with the dabus. I told him about his dead brethren and he left to investigate."~ */ DO ~AddexperienceParty(11500)
~ JOURNAL #52680 /* ~I've learned that the Alley of Lingering Sighs is not only alive, it is also very capable of defending itself. It seems the dabus I spoke to did indeed go to investigate the building where I discovered the dead dabus. Once inside, the Alley removed the exit from the building, trapping it inside as well.~ */ GOTO 21
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52696 /* ~"I have yet to reverse the dabus' repairs. Tell me again what I must do."~ */ GOTO 22
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN REPLY #52697 /* ~"I have reversed the repairs at one site. Tell me again where I can find the other."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",0)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52698 /* ~"I have reversed the repairs at one site. Tell me again where I can find the other."~ */ GOTO 23
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
Global("Alley_Puzzle_1","GLOBAL",1)
Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN REPLY #52699 /* ~"I have reversed the repairs as you have asked."~ */ GOTO 24
  IF ~~ THEN REPLY #52700 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #52629 /* ~"IT MUST BE REMOVED. THERE MUST BE A WAY. MAKE IT DEPART. TIME IS SHORT. MUST DIVIDE SOON OR BE DESTROYED."~ */
  IF ~~ THEN REPLY #52701 /* ~"Don't worry, I'll think of something. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52630 /* ~"THE FLOATING ONE IS DESTROYED. IT NO LONGER REPAIRS. NO LONGER INTERFERES."~ */
  IF ~~ THEN REPLY #52702 /* ~"Yes, he won't be interfering anymore... now you can divide."~ */ DO ~AddexperienceParty(1500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 14.0 15.1 17.0
  SAY #52631 /* ~The voice of the Alley is silent for a long moment, as if contemplating your words. "SHOULD NOT HAVE DESTROYED FLOATING ONE. YOU DRAW THE ATTENTION OF THE BLADED ONE. PAIN-BRINGER SHE IS."~ */
  IF ~~ THEN REPLY #52703 /* ~"I had to kill him... it was the only way I could get him to stop repairing."~ */ GOTO 19
  IF ~~ THEN REPLY #52704 /* ~"What's done is done. The dabus *is* gone though, and now you can divide."~ */ GOTO 19
  IF ~~ THEN REPLY #52705 /* ~"Look, you asked me to remove him... so I gutted him. Now you can divide, right?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Alley_1","GLOBALGood",-1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1 18.2 21.0
  SAY #52632 /* ~"STILL CANNOT DIVIDE. TOO WEAK. CANNOT UNDO FLOATING ONES REPAIRS. ITS CHANGES MUST BE REVERSED BEFORE I CAN DIVIDE. YOU MUST UNDO THE FLOATING ONES REPAIRS FOR ME."~ */
  IF ~~ THEN REPLY #52706 /* ~"You want me to undo the dabus' changes? How?"~ */ GOTO 20
  IF ~~ THEN REPLY #52707 /* ~"How can I reverse the repairs? I'm no carpenter."~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #52633 /* ~"SEEK OUT THE PARTS OF ME THE FLOATING ONE HAS CHANGED. REVERSE THE CHANGES. UNDO THE REPAIRS. MUST BE EXACT. PRECISE. ONLY THEN CAN I DIVIDE."~ */
  IF ~~ THEN REPLY #52708 /* ~"Very well. I'll find and reverse the repairs for you. I'll probably need some tools... a hammer and prybar should do the trick."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",2)
~ JOURNAL #52679 /* ~Although I managed to get rid of the dabus, the repairs it made are still preventing the Alley from dividing. I've agreed to find and somehow reverse the repairs. It seems the Alley is on the verge of giving birth and in its weakened state it is unable to reverse the changes itself. I'll probably need some tools... a hammer and prybar should do the trick.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0 15.2
  SAY #52634 /* ~"YES. THE FLOATING ONE NO LONGER REPAIRS. IT IS NOW WITH THE OTHER. I HAVE CLOSED MYSELF AROUND IT. IT REMAINS INSIDE ME FOREVER."~ */
  IF ~~ THEN REPLY #52709 /* ~"I see. Now that it is trapped, you can divide without interference, right?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 22 // from: 15.3
  SAY #52635 /* ~"TWO PLACES UPON ME. MUST UNDO WHAT FLOATING ONE HAS CHANGED. I CANNOT CHANGE THEM MYSELF. MUST CONSERVE ENERGY FOR DIVISION. YOU MUST MAKE CHANGES IN THE WAY OF YOUR KIND."~ */
  IF ~~ THEN REPLY #52710 /* ~"Very well. I'll go find and reverse the repairs for you."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.4 15.5
  SAY #52636 /* ~"THE TWO PLACES ARE UPON ME. ONE IS WEST OF THE OTHER. ONE IS EAST OF THE OTHER."~ */
  IF ~~ THEN REPLY #52711 /* ~"Very descriptive. Thanks for your help."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 15.6
  SAY #52637 /* ~"YES. ALL IS IN ORDER. I AM GRATEFUL." Again the wind begins to blow around you, this time with fierce intensity. The omnipresent sounds of the Alley begin to increase in volume until the soft murmur of the voice is nearly drowned out by the ensuing racket. "NOW YOU MUST GO. DIVISION BEGINS. THE WAY IS NOW OPEN TO YOU."~ */
  IF ~~ THEN REPLY #52712 /* ~"Farewell, then."~ */ DO ~SetGlobal("Pregnant_Quest","GLOBAL",3)
AddexperienceParty(16250)
AddJournalEntry(106724,QUEST_DONE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52638 /* ~The stone face before you begins to transform once again, its mass shifting and roiling as you look on. The entire wall seems to melt before your eyes, exposing a narrow passageway beyond. The ground underfoot suddenly begins to rock violently and the soft sighing of the wind intensifies to a more urgent, almost human-like moaning. You can hear the sounds of crashing stones and snapping boards all around you as you dash into the passageway.~ */
  IF ~~ THEN REPLY #52723 /* ~Leave.~ */ DO ~StartMovie("Alybirth")
~ JOURNAL #52678 /* ~I succeeded in aiding the pregnant Alley in its delivery. As it had promised, the birth of the new Alley created a passage so that I may travel between the Hive and the Lower Ward.~ */ EXIT
END
