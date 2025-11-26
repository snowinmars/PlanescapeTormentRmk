// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOTHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOTHAR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #2951 /* ~"You again? What do you want from old Lothar now? I have given you your skull friend and your answers. I warn you, I haven't all day to attend to you." His gaze falls on you with the force of a sledgehammer.~ */
  IF ~~ THEN REPLY #2952 /* ~"I would like some more questions answered."~ */ GOTO 1
  IF ~~ THEN REPLY #28728 /* ~"I just wanted to talk to you some more."~ */ GOTO 2
  IF ~~ THEN REPLY #43392 /* ~"I wish to avail myself of your healing prowess."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43393 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 11.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 53.0 57.0
  SAY #28657 /* ~"Keep it quick, scarred one. I cannot tarry all day."~ */
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28730 /* ~"Tell me about Ravel Puzzlewell."~ */ GOTO 49
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28731 /* ~"Why am I immortal?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ JOURNAL #67691 /* ~Lothar told me that the reason I am immortal is that my mortality was stripped from me by the hideous night hag Ravel Puzzlewell. He went on to say that if I wanted further answers, I should seek her in the Maze to which she was sent by the Lady of Pain. Now I just need to figure out how to get there...~ */ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28732 /* ~"Why am I immortal?"~ */ GOTO 47
  IF ~~ THEN REPLY #28733 /* ~"Why have I lost my memory?"~ */ GOTO 48
  IF ~~ THEN REPLY #43394 /* ~"I wish to avail myself of your healing prowess."~ */ DO ~StartStore("Lothar",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #43395 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 11.1
  SAY #28658 /* ~He stares at you coolly, makes a small motion, and you find yourself gone.~ */
  IF ~~ THEN REPLY #28735 /* ~"Wait a minute..."~ */ DO ~TeleportParty("AR0500",[2270.3023],2)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #28659 /* ~"Have you come to reclaim the chatterbox yet? Its endless yammerings weary me."~ */
  IF ~~ THEN REPLY #28736 /* ~"No, you can keep him."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #28737 /* ~"Yes. Please give him to me."~ */ DO ~SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28660 /* ~Lothar's eyes grow steely. "You will take him regardless." With a wave of his hand, Lothar frees Morte, who vanishes from the shelf. "You shall find him outside, upstairs, near where you entered my domain." He turns away. "Farewell."~ */
  IF ~~ THEN REPLY #61286 /* ~"Farewell."~ */ JOURNAL #37700 /* ~Lothar gave Morte back to me, despite my telling the Master of the Bones that I didn't want the chatterbox. I am to retrieve him upstairs, near where I entered Lothar's domain.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #28661 /* ~With a wave of his hand, Lothar frees Morte, who vanishes from the shelf. "You shall find him outside, upstairs, near where you entered my domain." He turns away. "Farewell."~ */
  IF ~~ THEN REPLY #61287 /* ~"Farewell."~ */ JOURNAL #38204 /* ~Lothar gave Morte back to me. I am to retrieve him upstairs, near where I entered Lothar's domain.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #28662 /* ~"You have returned, I see. And do you have a skull for me?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28757 /* ~"I have a human skull."~ */ GOTO 35
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28758 /* ~"I have the skull of a wererat..."~ */ GOTO 35
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28759 /* ~"I have the skull of Hargrimm, skeleton priest of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
SetGlobal("Morte_Stolen","GLOBAL",2)
~ GOTO 37
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28760 /* ~"I have the skull of Stale Mary, zombie leader of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 38
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28761 /* ~"I have the skull of Acaste, leader of the rebel ghouls."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 39
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28762 /* ~"I have the skull of Soego, the wererat Dustman missionary."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 40
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28763 /* ~"I have the skull of the Silent King, ruler of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 41
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28764 /* ~"I have the skull of Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
SetGlobal("Morte_Stolen","GLOBAL",2)
AddexperienceParty(15000)
~ GOTO 36
  IF ~~ THEN REPLY #54116 /* ~"Not yet."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.8
  SAY #28663 /* ~"Then I suggest you find one, if you ever hope to learn what you need to know - and if you ever require the presence of your chattering pseudo-mimir."~ */
  IF ~~ THEN REPLY #28765 /* ~"Fine. I'll be back."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #28664 /* ~"Well? Have you brought me the skull I require in exchange for yours?" Lothar smiles wryly.~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28766 /* ~"There is no skull in that casket, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28767 /* ~"Not yet."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 14.1
  SAY #28665 /* ~"Then go. I suggest you do not return until you have found it."~ */
  IF ~~ THEN REPLY #28768 /* ~"Fine."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 14.0 21.2 22.2 26.0 30.0 54.2
  SAY #28666 /* ~"What is the meaning of this? The tomb was so well trapped, so well defended from scrying magicks, that it was a challenge even for me! There must be some explanation for this, and," he draws out his words angrily and slowly, "YOU will provide it to me. Go through the portal in the chambers below and seek the answer."~ */
  IF ~~ THEN REPLY #28769 /* ~"I have no answer. How could I know?"~ */ GOTO 55
  IF ~~ THEN REPLY #31897 /* ~"I believe it was a trap to discourage the graverobbers who prey on such crypts."~ */ GOTO 55
  IF ~~ THEN REPLY #31898 /* ~"It was my own tomb."~ */ GOTO 56
END

IF WEIGHT #5 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #28667 /* ~"You again?" The old man totters slightly as he gazes at you. "What do you want from old Lothar now? I have given you your answers. I warn you, I haven't all day to attend to you." His gaze falls on you with the force of a sledgehammer.~ */
  IF ~~ THEN REPLY #28770 /* ~"I would like some more questions answered."~ */ GOTO 1
  IF ~~ THEN REPLY #28771 /* ~"I just wanted to talk to you some more."~ */ GOTO 2
  IF ~~ THEN REPLY #28772 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 12 // from:
  SAY #28668 /* ~"You have returned, I see. And do you have a skull for me?"~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #28773 /* ~"I have a human skull."~ */ GOTO 35
  IF ~  PartyHasItem("SkullMa")
~ THEN REPLY #28774 /* ~"I have the skull of Mantuok."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",10)
TakePartyItemNum("SkullMa",1)
AddexperienceParty(15000)
~ GOTO 57
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #28775 /* ~"I have the skull of Hargrimm, skeleton priest of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",5)
TakePartyItemNum("SkullHa",1)
AddexperienceParty(15000)
~ GOTO 42
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #28776 /* ~"I have the skull of Stale Mary, zombie leader of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",6)
TakePartyItemNum("SkullSM",1)
AddexperienceParty(15000)
~ GOTO 43
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #28777 /* ~"I have the skull of Acaste, leader of the rebel ghouls."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",7)
TakePartyItemNum("SkullAc",1)
AddexperienceParty(15000)
~ GOTO 44
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #28778 /* ~"I have the skull of Soego, the wererat Dustman missionary."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",8)
TakePartyItemNum("SkullSo",1)
AddexperienceParty(15000)
~ GOTO 45
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #28779 /* ~"I have the skull of the Silent King, ruler of the Dead Nations."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",9)
TakePartyItemNum("SkullSK",1)
AddexperienceParty(15000)
~ GOTO 46
  IF ~  PartyHasItem("SkullW")
~ THEN REPLY #28780 /* ~"I have the skull of a wererat."~ */ GOTO 35
  IF ~~ THEN REPLY #54115 /* ~"Not yet."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.8
  SAY #28669 /* ~"Then I suggest you return to the catacombs and find yourself a new one, hmm?"~ */
  IF ~~ THEN REPLY #28782 /* ~"Fine, fine."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 19 even though they appear after this state */
~  GlobalGT("Lo_Quest","GLOBAL",1)
GlobalLT("Lo_Quest","GLOBAL",4)
Global("Morte_Stolen","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #28670 /* ~"Well? Have you found the skull that will buy your answers?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28783 /* ~"There is no skull in that casket, Lothar."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~~ THEN REPLY #28784 /* ~"Not yet."~ */ GOTO 9
END

IF WEIGHT #8 /* Triggers after states #: 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 15 // from:
  SAY #28671 /* ~"Ah! A visitor. What brings you to my humble salon uninvited, without leave?"~ */
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #28785 /* ~"Who are you?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #28786 /* ~"What is this place?"~ */ GOTO 20
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28787 /* ~"Who are you?"~ */ GOTO 20
  IF ~~ THEN REPLY #47559 /* ~"Nothing. Forgive my intrusion."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #28672 /* ~"But you perceive that you cannot enter the Bones of the Night uninvited and expect to walk away so quickly. I sell answers here, boy, and by all the powers, I'll have one from you or I'll have your head decorating my shelf as well."~ */
  IF ~~ THEN REPLY #28788 /* ~"I'd like to see you try it, old man."~ */ GOTO 18
  IF ~~ THEN REPLY #28789 /* ~"You sell answers? Then tell me: Who am I? Why am I immortal?"~ */ GOTO 20
  IF ~~ THEN REPLY #28791 /* ~"I don't think so. Farewell."~ */ GOTO 17
  IF ~~ THEN REPLY #43396 /* ~"I wish to avail myself of your healing prowess. I have heard of you."~ */ GOTO 20
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #28673 /* ~"You have exactly one chance left to answer me before I wrest the answer from your grinning skull."~ */
  IF ~~ THEN REPLY #28792 /* ~"Then I'm here to buy some answers."~ */ GOTO 20
  IF ~~ THEN REPLY #28793 /* ~"And you have exactly one chance to pike yourself before I kill you."~ */ GOTO 18
  IF ~~ THEN REPLY #43397 /* ~"I wish to avail myself of your healing prowess. I have heard of you."~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.1 22.0 34.1
  SAY #28674 /* ~The old man's eyes gleam and he chants out a twisted phrase of arcane syllables. Pain wracks your body. Darkness closes in...~ */
  IF ~~ THEN REPLY #28794 /* ~"Ack..."~ */ DO ~SetGlobal("Game_Over","GLOBAL",1)
~ EXIT
END

IF WEIGHT #0 ~  GlobalLT("KidMorte_Speak","AR0508",2)
Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #28675 /* ~A flash of light and smoke blinds you for a moment, and a withered old man stands before you. "Have we visitors, skull?"~ */
  IF ~~ THEN DO ~SetGlobal("Know_Lothar","GLOBAL",1)
SetGlobal("KidMorte_Speak","AR0508",2)
~ EXTERN ~DKIDMORT~ 4
END

IF ~~ THEN BEGIN 20 // from: 15.0 15.1 15.2 16.1 16.3 17.0 17.2
  SAY #28676 /* ~"For all answers, for all spells, there is a price. In your case..." the old man pauses. "Skulls are my currency. I ask them questions, and the dead respond. Much have the dead accumulated in their lifetimes. The more valuable the skull, the greater the number of questions you may ask, the greater the spell I shall cast for you."~ */
  IF ~~ THEN REPLY #28795 /* ~"And?"~ */ GOTO 54
END

IF ~~ THEN BEGIN 21 // from: 54.0
  SAY #28677 /* ~Lothar's eyes glint dangerously. "It was not a request."~ */
  IF ~~ THEN REPLY #28797 /* ~"Forget it, I said."~ */ GOTO 22
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28798 /* ~"Fine, fine. I'll get your skull."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47560 /* ~"The tomb is already empty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #28678 /* ~"One more chance, scarred flesh, shall you have before I decide to take your skull instead."~ */
  IF ~~ THEN REPLY #28799 /* ~"Take your shot, Lothar."~ */ GOTO 18
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28800 /* ~"No need to get angry. I'll get the skull."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64538 /* ~"The tomb is already empty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
AddexperienceParty(30000)
~ GOTO 10
END

IF ~~ THEN BEGIN 23 // from:
  SAY #28679 /* ~The old man ignores Morte. "Greetings, traveler. Who might you be to enter Lothar's humble salon without invitation?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28801 /* ~"You've kidnapped my friend. Give him back. Now."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28802 /* ~"You've kidnapped my friend. Give him back. Now."~ */ GOTO 25
  IF ~~ THEN REPLY #28803 /* ~"My pardon, sir, but you seem to have something that belongs to me."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28680 /* ~"Kidnapped? Your friend? I have done no such thing. Where is this friend?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 5
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28681 /* ~"Kidnapped? Your friend? I have done no such thing. Where is this friend?"~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 6
END

IF ~~ THEN BEGIN 26 // from: 21.1 22.1 54.1
  SAY #28682 /* ~"You must pass through either the Warrens of Thought, controlled by the cranium rats, or through the Dead Nations, controlled by the walking dead, pass through the watery realm of the Drowned Nations, and find the catacomb of this nameless lord. A seasoned... adventurer... such as yourself should have no difficulty here. Move aside the divan here, pass through the portal on the eastern wall in the chambers below. The portal will remain active for your return. I will have your answers when you have that skull."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28804 /* ~"I have been there, and there is no body in that crypt."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ GOTO 10
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28805 /* ~"I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.2
  SAY #28683 /* ~"Ah, yes? What might that be?"~ */
  IF ~~ THEN REPLY #28806 /* ~"A skull that belongs to me is on that shelf."~ */ GOTO 28
  IF ~~ THEN REPLY #28807 /* ~"My friend Morte wound up on your shelf."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #28684 /* ~"You want the chattering skull with half the grace and manners of any ordinary creature? Give me a greater skull in return if you wish it back," Lothar replies. "I do not need to bargain for something that is already mine."~ */
  IF ~~ THEN REPLY #28809 /* ~"He was never yours... or anyone's... to begin with."~ */ GOTO 32
  IF ~~ THEN REPLY #28810 /* ~"He's mine."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28811 /* ~"Where can I find a greater skull?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64539 /* ~"Where can I find a greater skull?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from:
  SAY #28685 /* ~EMPTY NODE REPORT THIS TO COLIN IF YOU HIT IT~ */
  IF ~~ THEN REPLY #28812 /* ~"Very well. Where can I find a greater skull?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #28813 /* ~"He's mine."~ */ GOTO 33
  IF ~~ THEN REPLY #28814 /* ~"He was never yours to begin with."~ */ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3 29.0 32.0 32.2 34.0 34.2 51.2 51.3
  SAY #28686 /* ~"Move aside the divan in the center of the room, and pass through the portal on the eastern wall in the chambers below to the catacombs. The portal will remain active for your return. In the catacombs, many skulls. One of great value lies within the interred crypts of the Dustmen, beyond the Drowned Nations. Bring that skull to me - as my wererat minions have failed to do - and I will see to it that your friend is returned to you. Perhaps I shall even answer some questions for you."~ */
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #2970 /* ~"I've been to the tomb you speak of. It is empty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #66222 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will return Morte to me.~ */ GOTO 10
  IF ~~ THEN REPLY #2971 /* ~"What assurance do I have that you will keep your word?"~ */ JOURNAL #66222 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will return Morte to me.~ */ GOTO 31
  IF ~~ THEN REPLY #28853 /* ~"Very well. I shall return and you will give me Morte. Farewell."~ */ JOURNAL #66222 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will return Morte to me.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #28687 /* ~"You have my word. That will be enough for you. Unless, of course, you would rather not see your friend again..."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 7
END

IF ~~ THEN BEGIN 32 // from: 28.0 29.2 51.0
  SAY #28688 /* ~"Your ignorance is astonishing. You truly know very little about very little. Now: Fetch me another skull to replace him or say farewell to your friend."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28854 /* ~"Fine, then. How do I get another skull that's worth what he's worth?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28855 /* ~"Just give him back. He's mine."~ */ GOTO 33
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64540 /* ~"Fine, then. How do I get another skull that's worth what he's worth?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 28.1 29.1 32.1 51.1
  SAY #28689 /* ~Lothar's hands tighten on his staff. "The skull is MINE. If you press the issue, I will take yours as well."~ */
  IF ~~ THEN EXTERN ~DKIDMORT~ 9
END

IF ~~ THEN BEGIN 34 // from:
  SAY #28690 /* ~"The skull speaks wisely. Heed it."~ */
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28856 /* ~"Very well, then. How do I find a greater skull?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #28857 /* ~"I don't think so. Give him back or suffer the consequences."~ */ GOTO 18
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64541 /* ~"Very well, then. How do I find a greater skull?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 6.0 6.1 12.0 12.7
  SAY #28691 /* ~Lothar holds up the skull and examines it carefully. "Bah. This is worth nothing. It can tell me nothing. I require a skull of value if I am to waste my time with you. Begone!"~ */
  IF ~~ THEN REPLY #28858 /* ~"Fine, fine."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 6.7
  SAY #28692 /* ~Lothar's eyes flash angrily. "Slay my servants, will you? Hand me his skull." He examines the skull carefully, and pronounces: "I can smell his treachery through his bone. A careful skulker, he was, but not careful enough, eh? I shall have his secrets from him, never fear, and I shall know his duplicity." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28859 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 37 // from: 6.2
  SAY #28693 /* ~Lothar takes the skull from you and examines it critically. "Hargrimm, you say? Leader of the Dead Nations? Much information he'll have for me. A satisfactory bargain." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28860 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 38 // from: 6.3
  SAY #28694 /* ~Lothar takes the head of Stale Mary from you, brushes off some of the excess flesh, and examines it carefully. "Zombie leader of the Dead Nations, you say? This will be satisfactory." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28861 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 39 // from: 6.4
  SAY #28695 /* ~Lothar takes the head of Acaste from you, brushes off some of the excess flesh, and examines it carefully. "The ghoul queen? This will be satisfactory." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28862 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 40 // from: 6.5
  SAY #28696 /* ~Lothar takes the head of Soego from you and examines it carefully, checking the teeth. "A Dustman missionary and spy, eh? This will be satisfactory." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28863 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 41 // from: 6.6
  SAY #28697 /* ~Lothar takes the skull of the Silent King from you and gently cradles it. "The Silent King, yes? This will be satisfactory indeed!" He whispers to the skull: "You shall reveal all your secrets to me, my newest friend." His fingers twist through an arcane gesture. "Your friend will be waiting for you above ground, where you came in. Have your answers from me."~ */
  IF ~~ THEN REPLY #28864 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 42 // from: 12.2
  SAY #28698 /* ~Lothar takes the skull from you and examines it critically. "Hargrimm, you say? Leader of the Dead Nations? Much information he'll have for me. A satisfactory bargain. You may have your answers from me."~ */
  IF ~~ THEN REPLY #28865 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 43 // from: 12.3
  SAY #28699 /* ~Lothar takes the head of Stale Mary from you, brushes off some of the excess flesh, and examines it carefully. "Zombie leader of the Dead Nations, you say? This will be satisfactory. You may have your answers from me."~ */
  IF ~~ THEN REPLY #28866 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 44 // from: 12.4
  SAY #28700 /* ~Lothar takes the head of Acaste from you, brushes off some of the excess flesh, and examines it carefully. "The ghoul queen? This will be satisfactory. You may have your answers from me."~ */
  IF ~~ THEN REPLY #28867 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 45 // from: 12.5
  SAY #28701 /* ~Lothar takes the head of Soego from you and examines it carefully, checking the teeth. "A Dustman missionary and spy, eh? This will be satisfactory, and amusing if nothing else. You may have your answers from me."~ */
  IF ~~ THEN REPLY #28868 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 46 // from: 12.6
  SAY #28702 /* ~Lothar takes the skull of the Silent King from you and gently cradles it. "The Silent King, yes? This will be satisfactory indeed! You may have your answers from me." He whispers to the skull: "You shall reveal all your secrets to me, my newest friend."~ */
  IF ~~ THEN REPLY #28869 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 47 // from: 1.1 1.2 48.0 48.1
  SAY #28703 /* ~"Your mortality - your soul, if you will, that which allows you to live and die - is gone from you. It was stripped from you by magical means, by the night hag Ravel Puzzlewell. Your mortality is the key to your existence - when you find it, you will find your answers."~ */
  IF ~~ THEN REPLY #28870 /* ~"Tell me about this Ravel."~ */ GOTO 49
  IF ~~ THEN REPLY #28871 /* ~"Who?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 1.3
  SAY #28704 /* ~"It is a side effect of losing your mortality."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #28872 /* ~"I have lost my mortality? What do you mean?"~ */ DO ~SetGlobal("Know_Ravel","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #28873 /* ~"I have lost my mortality? What do you mean?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 49 // from: 1.0 47.0 47.1
  SAY #28705 /* ~"Ravel Puzzlewell is an enigma, even among the night hags. Some would call her barmy; others say she plays a deeper game than any can see through. She is evil, through and through, making the fiends you'll see in the area seem positively divine when compared to her. She is out of the reach of men now, thank the powers, for she was mazed by the Lady of Pain."~ */
  IF ~~ THEN REPLY #28874 /* ~"Mazed? How do I find her?"~ */ DO ~SetGlobal("bd_lothar_ravel_maze","global",1)
~ GOTO 50
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28875 /* ~"What did she do?"~ */ GOTO 52
  IF ~  Global("bd_lothar_ravel_maze","global",1)
~ THEN REPLY #28876 /* ~"I see. My thanks. Farewell, Lothar."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28706 /* ~"Mazes are like pocket dimensions... small places between places. To reach one, you need to find a portal and a key. I do not know where the door or the key are. Perhaps you should seek some of your old acquaintances - you have certainly left a trail of them behind. They will find you, no doubt - pray they mean you well. Perhaps you should visit the Civic Festhall - they have many answers there."~ */
  IF ~~ THEN REPLY #28877 /* ~"What did Ravel do?"~ */ JOURNAL #31882 /* ~Lothar has suggested that I visit the Civic Festhall in search of answers to my questions about Ravel Puzzlewell.~ */ GOTO 52
  IF ~~ THEN REPLY #28878 /* ~"My thanks, Lothar. Farewell."~ */ JOURNAL #31882 /* ~Lothar has suggested that I visit the Civic Festhall in search of answers to my questions about Ravel Puzzlewell.~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #28707 /* ~"I did not give you permission to speak, skull!" Morte quails under Lothar's grim voice. "Scarred one, if you wish the skull back, you must fetch me a skull of greater value from the catacombs below. I will not bargain for something that is already mine. Accept or not."~ */
  IF ~~ THEN REPLY #28880 /* ~"He was never yours... or anyone's... to begin with."~ */ GOTO 32
  IF ~~ THEN REPLY #28881 /* ~"He's mine."~ */ GOTO 33
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #28882 /* ~"Where can I find a greater skull?"~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #64542 /* ~"Where can I find a greater skull?"~ */ DO ~SetGlobal("Lothar_Portal","GLOBAL",1)
~ GOTO 30
END

IF ~~ THEN BEGIN 52 // from: 49.1 50.0
  SAY #28708 /* ~"She was a maker of toys and puzzles, a solver of problems that didn't need solving. She decided that Sigil, the Cage, was the largest puzzlebox of all, and set herself to undo it - to let in the armies of fiends at her disposal, no doubt, to upset the balance of the city and turn the entire burg into a charnel house. Pray to any power you hold dear with thanks she did not succeed." ~ */
  IF ~~ THEN REPLY #28883 /* ~"I will find her, then, and force her to return my mortality. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #31864 /* ~Lothar's eyes flash angrily. "Slay my servants, will you? Hand me his skull." He examines the skull carefully, and pronounces: "I can smell his treachery through his bone. A careful skulker, he was, but not careful enough, eh? I shall have his secrets from him, never fear, and I shall know his duplicity."~ */
  IF ~~ THEN REPLY #31865 /* ~"I have many questions."~ */ GOTO 1
END

IF ~~ THEN BEGIN 54 // from: 20.0
  SAY #2912 /* ~"In your case, Lothar will charge you only a skull, a single skull, from the catacombs below, for what you ask of me. There is a tomb locked away, past the Drowned Nations, where my minions have not yet been able to penetrate. Bring me the skull of the one who lies inside, and I shall give you all the answers you require. ALL of them, if I am able. You WILL get this skull."~ */
  IF ~~ THEN REPLY #31867 /* ~"No way."~ */ JOURNAL #66223 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will answer my questions.~ */ GOTO 21
  IF ~  GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #31869 /* ~"You've got a deal."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",2)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will answer my questions.~ */ GOTO 26
  IF ~  Global("Lo_Quest","GLOBAL",3)
~ THEN REPLY #47561 /* ~"The tomb is already empty."~ */ DO ~SetGlobal("Lo_Quest","GLOBAL",4)
SetGlobal("Lothar_Portal","GLOBAL",1)
~ JOURNAL #66223 /* ~Lothar told me to move aside the divan in the center of the room to reveal a passageway leading to caverns below his house. Once there, I am to pass into the catacombs and find a tomb beyond the Drowned Nations. In that tomb, there is a skull of great value. Once I bring this to him, he will answer my questions.~ */ GOTO 10
END

IF ~~ THEN BEGIN 55 // from: 10.0 10.1
  SAY #31900 /* ~"There is some merit in what you say, yet... there is something about that crypt that spoke of much promise. I will think on this, and I encourage you to do the same." He turns away, and turns back to you almost immediately. "Bring me another skull, then, and our agreement shall be as before. Do not try to deceive me with just any skull, either - I am something of a connoisseur. Return when you have something of value to me."~ */
  IF ~~ THEN REPLY #31901 /* ~"Very well. Farewell."~ */ JOURNAL #31875 /* ~Lothar has told me to collect another skull to replace the one I could not find in the trapped tomb.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 10.2
  SAY #31902 /* ~"Your tomb? YOUR tomb?" He eyes you carefully. "We shall investigate this more carefully. Fetch me another skull, then, as you seem attached to yours, and we shall see what answers I can provide. Our agreement shall be as before. Do not try to deceive me with just any bone, either - I am something of a connoisseur. Return when you have something of value to me."~ */
  IF ~~ THEN REPLY #31905 /* ~"Very well. Farewell."~ */ JOURNAL #31874 /* ~Lothar has assigned me to find another skull to replace the one that could not have been in my trapped tomb.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 12.1
  SAY #54113 /* ~Lothar's eyes flash angrily. "Slay my servants, will you? Hand me his skull." He examines the skull carefully, and pronounces: "I can smell his treachery through his bone. A careful skulker, he was, but not careful enough, eh? I shall have his secrets from him, never fear, and I shall know his duplicity. Have your answers from me."~ */
  IF ~~ THEN REPLY #54114 /* ~"I had many questions for you."~ */ GOTO 1
END
