// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORPHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORPHIR~

IF ~  Global("Porphiron","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25992 /* ~Every inch of this man's skin is covered in a web of black lines; it's as if some artist chose to accentuate every crease in his flesh with a quill pen. The overall effect is such that even when his face shows no expression, he appears to be frowning. ~ */
  IF ~~ THEN REPLY #25993 /* ~"Greetings."~ */ DO ~SetGlobal("Porphiron","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #25994 /* ~Leave the illustrated man alone.~ */ EXIT
END

IF ~  GlobalGT("Porphiron","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #26633 /* ~You see Porphiron; he is still standing grimly on the street, paying no heed to the passersby. The web of lines on his face are staggered into a series of right angles.~ */
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26686 /* ~"Greetings, Porphiron. Can I ask you some questions?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26687 /* ~"Greetings, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #26688 /* ~"Greetings, Porphiron. Can I ask you some questions?"~ */ GOTO 3
  IF ~  Global("Porphiron_Quest","GLOBAL",0)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26689 /* ~"This one addresses you, Porphiron: May I ask you some questions?"~ */ GOTO 5
  IF ~  Global("Porphiron_Quest","GLOBAL",1)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26690 /* ~"This one addresses you, Porphiron."~ */ GOTO 2
  IF ~  Global("Porphiron_Quest","GLOBAL",2)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #26691 /* ~"This one addresses you, Porphiron: May I ask you some questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #26692 /* ~Leave Porphiron alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.4
  SAY #26634 /* ~As you speak, the angles in Porphiron's face relax into a series of strange curves. "This one would ask: Do you have the neck rope of beads that was stolen?"~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26694 /* ~"I think so. Is this it?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26697 /* ~After recovering the necklace from the thugs outside the Smoldering Corpse, I returned Porphiron's necklace to him.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26695 /* ~"Not yet... where did you say it was stolen from you again?"~ */ GOTO 23
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26696 /* ~"Not as yet. I will keep looking, then return."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 1.5
  SAY #26635 /* ~"This one awaits: What question will you ask?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26698 /* ~"Can you teach me of the path of the warrior?"~ */ GOTO 35
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #26699 /* ~"I wish to leave my current profession and take up the mantle of a warrior again."~ */ GOTO 32
  IF ~  ExtraProficiency(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26700 /* ~"Can you tell me if I am ready for more instruction?"~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26701 /* ~"Can you tell me if I am ready for more instruction?"~ */ GOTO 53
  IF ~  ExtraProficiencyGT(Protagonist,0)
ProficiencyGT(Protagonist,FIST,0)
ProficiencyGT(Protagonist,DAGGER,0)
ProficiencyGT(Protagonist,HAMMER,0)
ProficiencyGT(Protagonist,AXE,0)
ProficiencyGT(Protagonist,CLUB,0)
Class(Protagonist,FIGHTER)
~ THEN REPLY #26702 /* ~"I have achieved the level of the proficient in all weapons, Porphiron. Is there anything more you can teach?"~ */ GOTO 52
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26703 /* ~"I would learn more of weapons."~ */ GOTO 42
  IF ~~ THEN REPLY #26704 /* ~"No questions right now. I may return later."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0
  SAY #26636 /* ~"This one has a name: This one is called Porphiron." The man's voice is like a gong; as he speaks, the lines on his face bend and settle into a series of spherical patterns. "This one would know: why do you address this one?"~ */
  IF ~~ THEN REPLY #26706 /* ~"I wanted to ask you some questions about the city."~ */ GOTO 5
  IF ~~ THEN REPLY #26707 /* ~"Never mind. I'm sorry to disturb you."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 1.3 4.0
  SAY #26637 /* ~"This one would have you know: This one cannot answer your questions." The lines on his face twist into angles, then split into a mess of scribbles. "This one has only recently stepped foot in this place of walls."~ */
  IF ~~ THEN REPLY #26708 /* ~"All right, then. Uh, but I have to ask you this: why do those lines upon your face... move?"~ */ GOTO 6
  IF ~~ THEN REPLY #26709 /* ~"Very well, then. Sorry to disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #26638 /* ~"The lines show anger: Do you take offense?" The lines slowly straighten, forming into gentle curves. "No offense was meant: Will you accept the many apologies of this one?"~ */
  IF ~~ THEN REPLY #26710 /* ~"No offense taken... why are you angry?"~ */ GOTO 7
  IF ~~ THEN REPLY #26712 /* ~"Very well. Thank you for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #26639 /* ~"This one tells of event recent: Did you know this one was beset by three? The three demanded an item of this one. This one feared an attack: What does this one do? This one surrendered the item."~ */
  IF ~~ THEN REPLY #26713 /* ~"Well, you were right to be afraid. If there were three, then they might have killed you had you not given up the item."~ */ GOTO 8
  IF ~~ THEN REPLY #26714 /* ~"I see. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #26640 /* ~"This one has been misunderstood." The lines on his face become angled, then smooth into curves again. "This one did not fear being killed: This one feared killing the three."~ */
  IF ~~ THEN REPLY #26715 /* ~"Well... if you could have killed them, why did you let them rob you?"~ */ GOTO 9
  IF ~~ THEN REPLY #26717 /* ~"Uh, that was very brave of you. And considerate. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #26641 /* ~"This one walks the path of a warrior: Many weapons have walked with this one. The fist, the blade, the stave, the hatchet, the smiter: These tools are all known to this one."~ */
  IF ~~ THEN REPLY #26718 /* ~"That's not much of an explanation... again, if you're a warrior with that much training, why let them rob you?"~ */ GOTO 10
  IF ~~ THEN REPLY #26719 /* ~"I see. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #26642 /* ~"This one is forbidden to attack." The lines ripple across his face as he speaks. "If this one had struck at the three in anger: The vow of non-violence would be unmade."~ */
  IF ~~ THEN REPLY #26720 /* ~"Vow of non-violence? You're a warrior and a *pacifist?*"~ */ GOTO 11
  IF ~~ THEN REPLY #26721 /* ~"I see. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #26643 /* ~"This one is unfamiliar with your speech: What is this 'pas-ivisst'?"~ */
  IF ~~ THEN REPLY #26722 /* ~"Never mind. Why did you train so much if you are not permitted to attack another?"~ */ GOTO 12
  IF ~~ THEN REPLY #26723 /* ~"It doesn't matter. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #26644 /* ~"This one is of the *Order of Erit-Agge:* We await the Final Days where all will be called to battle. The training and skills of this one: They are to be kept silent until then." ~ */
  IF ~~ THEN REPLY #26724 /* ~"In the meantime, you will let yourself be robbed in the street, without defending yourself?"~ */ GOTO 13
  IF ~~ THEN REPLY #26725 /* ~"If that is your belief, then you have upheld it. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #26645 /* ~"This one will clarify: The item is of value. The discipline of the *Erit-Agge* is of greater value."~ */
  IF ~~ THEN REPLY #26727 /* ~"Since you won't fight, any chance you could talk these thieves into returning your item?" ~ */ GOTO 14
  IF ~~ THEN REPLY #26728 /* ~"I see. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #26646 /* ~"This one addresses the three thieves: What happens? The requests of this one are met with scorn: The three will not return the item."~ */
  IF ~~ THEN REPLY #26729 /* ~"I could go see if I could get the item back for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Porphiron_1","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #26730 /* ~"I could go beat them like dogs and take back what they stole."~ */ GOTO 19
  IF ~~ THEN REPLY #26731 /* ~"I could go get that item back for you, if you could pay me for my services."~ */ GOTO 15
  IF ~~ THEN REPLY #26732 /* ~"I see. I mourn your loss. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.2
  SAY #26647 /* ~"This one apologizes: Nothing more does this one have that was not already taken."~ */
  IF ~~ THEN REPLY #26733 /* ~"All right, then. I'll just go kill them anyway."~ */ GOTO 19
  IF ~~ THEN REPLY #26734 /* ~"You don't have *anything?*"~ */ GOTO 16
  IF ~~ THEN REPLY #26735 /* ~"Then I can't help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #26648 /* ~"This one apologizes twice: Would you consent to be trained?"~ */
  IF ~~ THEN REPLY #26736 /* ~"Trained? In what?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Porphiron_1","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #26738 /* ~"Not interested. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #26649 /* ~"Many weapons have walked with this one: The fist, the blade, the stave, the hatchet, the smiter. These tools are all known to this one: Do you wish them known to you?"~ */
  IF ~~ THEN REPLY #26739 /* ~"Hmmmm. Weapon training? If it's for free..."~ */ GOTO 18
  IF ~~ THEN REPLY #26740 /* ~"Not interested. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #26650 /* ~"This one speaks the cost: The item stolen returned only, nothing more."~ */
  IF ~~ THEN REPLY #26741 /* ~"All right, I'll do it. What's this stolen item look like?"~ */ GOTO 22
  IF ~~ THEN REPLY #26742 /* ~"Not interested. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 14.0 14.1 15.0
  SAY #26651 /* ~"This one must ask: Would you bring violence to the three that have robbed this one?"~ */
  IF ~~ THEN REPLY #26743 /* ~"Well, if they aren't smart enough to hand it over when I ask, things could get ugly."~ */ GOTO 20
  IF ~~ THEN REPLY #26744 /* ~"Not if I can help it."~ */ GOTO 21
  IF ~~ THEN REPLY #26745 /* ~"You know, I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #26652 /* ~The lines on the man's face form into a series of overlapping ellipses. "If that is the message they understand: Then that is how the message may be conveyed."~ */
  IF ~~ THEN REPLY #26747 /* ~"All right then. What is this item you've lost?"~ */ GOTO 22
  IF ~~ THEN REPLY #26748 /* ~"You know, I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #26653 /* ~"This one fears: A message absent of violence will not be understood." The lines on the man's face form into a series of ellipses. "This one is not opposed to you trying."~ */
  IF ~~ THEN REPLY #26749 /* ~"All right then. What is this item you've lost?"~ */ GOTO 22
  IF ~~ THEN REPLY #26751 /* ~"You know, I don't think I can help you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.0 20.0 21.0
  SAY #26654 /* ~"The item is this: A rope of black and red prayer beads worn around the neck. The worth of these beads is not measured in copper: The worth of these beads is measured in faith."~ */
  IF ~  PartyHasItem("PorNeck")
~ THEN REPLY #26752 /* ~"Wait a minute. I already have the necklace you're looking for. Is this it?"~ */ DO ~TakePartyItemNum("PorNeck",1)
~ JOURNAL #26756 /* ~While wandering the Hive, I came across a man with a series of shifting lines covering his skin. He claims that a necklace of his "order"... Erit-Agge, I believe... was stolen by three thugs dressed in black and red, who he says are near "a bar that is on fire on the inside." Turns out I'd already snagged the necklace from those three thugs, so I was able to return it immediately.~ */ GOTO 24
  IF ~  !PartyHasItem("PorNeck")
~ THEN REPLY #26754 /* ~"All right then. I'll see if I can find this necklace. Do you know where these three thugs might be?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 2.1 22.1
  SAY #26655 /* ~"This one knows where the angry words were traded and the item lost: By the bar that burns inside? The three were outside the place: Dressed in black and red."~ */
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #26757 /* ~"Three robbers, dressed in red and black, outside a bar that burns on the inside? That can't be too hard to find. Farewell."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26760 /* ~While wandering the Hive, I came across a man with a series of shifting lines covering his skin. He claims that a necklace of his "order"... Erit-Agge, I believe... was stolen by three thugs dressed in black and red, by a bar that burns inside. I'll go see if I can find the place and see if I can get the item back.~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #26758 /* ~"Three robbers, dressed in red and black, outside the Smoldering Corpse Bar? I'll go find them. Farewell."~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",1)
~ JOURNAL #26759 /* ~While wandering the Hive, I came across a man with a series of shifting lines covering his skin. He claims that a necklace of his "order"... Erit-Agge, I believe... was stolen by three thugs dressed in black and red, outside the Smoldering Corpse Bar. I'll go see if I can get the item back.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 2.0 22.0
  SAY #26656 /* ~"This one sees what you hold: Those are the beads once missing." He takes them from you... you notice his hands have the same tracery of lines upon them as his face. "This one has a question: How did you get the beads from the three?"~ */
  IF ~  Dead("ThugP1")
~ THEN REPLY #26761 /* ~"I killed them and took the beads."~ */ GOTO 25
  IF ~  Global("Porphiron_Necklace","GLOBAL",0)
!Dead("ThugP1")
~ THEN REPLY #26762 /* ~"I stole them."~ */ GOTO 26
  IF ~  Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26763 /* ~"I purchased them."~ */ GOTO 28
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26764 /* ~"I told a few harmless lies, then they were happy to give me the beads."~ */ GOTO 27
  IF ~  GlobalGT("Porphiron_Necklace","GLOBAL",0)
GlobalLT("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26765 /* ~"I convinced them it was in their best interest to return the necklace."~ */ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",1)
!Global("Porphiron_Necklace","GLOBAL",1)
~ THEN REPLY #26766 /* ~Lie: "Uh... I talked them out of it. They were happy to give me the beads back."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 27
  IF ~  !Global("Porphiron_Necklace","GLOBAL",3)
~ THEN REPLY #26767 /* ~Lie: "Uh... I bought it from them. They were happy to negotiate for the beads."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_2","GLOBALLaw",-1)
~ GOTO 28
END

IF ~~ THEN BEGIN 25 // from: 24.0 26.1 26.2 27.1 27.2 28.1 28.2
  SAY #26657 /* ~"This one is content: The message of violence has been conveyed. This one bestows: Several welcome thanks, yes?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26768 /* ~"The pleasure was mine. I have a question for you, though: if you cannot enter combat, how did you get your warrior training?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26769 /* ~"What about the weapons training you promised?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #26658 /* ~"This one would know: One who fights with deception carries a name in the Order of *Erit-Agge.*" Porphiron's face breaks into angles again. "Those ones are called deceivers: It is a path without discipline and without honor."~ */
  IF ~~ THEN REPLY #26770 /* ~"If you were a true warrior, you would learn to use EVERY weapon at your disposal."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26771 /* ~Truth: "Oh, I still killed the thieves."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26772 /* ~Lie: "Oh, I still killed the thieves."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 27 // from: 24.3 24.4 24.5
  SAY #26659 /* ~"This one would know: One who fights with words carries a name in the Order of *Erit-Agge.*" Porphiron's face breaks into angles again. "Those ones are called diplomats: It is a path without discipline and without honor."~ */
  IF ~~ THEN REPLY #26773 /* ~"If you were a true warrior, you would learn to use EVERY weapon at your disposal."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26774 /* ~Truth: "Oh, I still killed the thieves."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26775 /* ~Lie: "Oh, I still killed the thieves."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 28 // from: 24.2 24.6
  SAY #26660 /* ~"This one would know: One who fights with coin carries a name in the Order of *Erit-Agge.*" Porphiron's face breaks into angles again. "Those ones are called merchants: It is a path without discipline and without honor."~ */
  IF ~~ THEN REPLY #26776 /* ~"If you were a true warrior, you would learn to use EVERY weapon at your disposal."~ */ GOTO 29
  IF ~  Dead("ThugP1")
~ THEN REPLY #26777 /* ~Truth: "Oh, I still killed the thieves."~ */ GOTO 25
  IF ~  !Dead("ThugP1")
~ THEN REPLY #26778 /* ~Lie: "Oh, I still killed the thieves."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Porphiron_1","GLOBALLaw",-1)
~ GOTO 25
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #26661 /* ~"This one bestows apologies: This one meant no offense." The angles on Porphiron's face sharpen acutely, then slowly curve into ripples. "This one bestows: Several welcome thanks for your service, yes?"~ */
  IF ~  Global("Evil_Porphiron_1","GLOBAL",0)
~ THEN REPLY #26779 /* ~"You're welcome... I think. I have a question for you, though: if you cannot enter combat, how did you get your warrior training?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 30
  IF ~  Global("Evil_Porphiron_1","GLOBAL",1)
~ THEN REPLY #26780 /* ~"Hmmm. What about the weapons training you promised?"~ */ DO ~SetGlobal("Porphiron_Quest","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 25.0 29.0
  SAY #26662 /* ~"This one clarifies: The *Erit-Agge* may train with one when there is no anger between them."~ */
  IF ~~ THEN REPLY #26781 /* ~"I see. Could you teach me how to use those weapons?"~ */ GOTO 31
  IF ~~ THEN REPLY #26782 /* ~"Just curious. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.1 29.1 30.0
  SAY #26663 /* ~"This one could instruct you, yes. But this one warns you: With knowledge of violence comes temptation to use it."~ */
  IF ~~ THEN REPLY #26783 /* ~"I sure hope so."~ */ GOTO 32
  IF ~~ THEN REPLY #26784 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 3.1 31.0
  SAY #26664 /* ~"This one speaks: Is it your will to leave behind your previous profession? The path of the warrior cannot be walked with an unfocused mind."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #26785 /* ~"I have no profession other than fighting at this moment. I would walk the path of the warrior."~ */ GOTO 35
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #26786 /* ~"Yes. I wish to abandon the mage's Art and take up weapons."~ */ GOTO 33
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #26787 /* ~"I no longer wish to be a thief... I wish to be of the warrior profession."~ */ GOTO 33
  IF ~~ THEN REPLY #26788 /* ~"No, not at this time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1 32.2
  SAY #26665 /* ~"This one has heard you: You are ready to walk the path. This one bids you listen..."~ */
  IF ~~ THEN REPLY #26790 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #26666 /* ~"You now follow the path of the warrior. Do you wish to learn more of its ways?"~ */
  IF ~~ THEN REPLY #26791 /* ~"Yes."~ */ GOTO 35
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26792 /* ~"I am already familiar with them. What can you teach me about the weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26794 /* ~"Not at the moment... I merely wished to re-orient myself. Thanks, Porphiron."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.0 32.0 34.0 42.10 51.0
  SAY #26667 /* ~"This one will instruct." The lines on his face fold into triangles. "These things comprise the angles of your training: focus, experience, proficiency."~ */
  IF ~~ THEN REPLY #26795 /* ~"I don't understand. Can you explain?"~ */ JOURNAL #26798 /* ~Porphiron spoke of training in the art of the warrior. He said that, in order to learn more about combat, I must be committed to the profession of the warrior and no other. If I were a mage, thief, or other profession, I would have to abandon it to learn more about weapons and combat. ~ */ GOTO 36
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26796 /* ~"I am already familiar with these concepts. What can you tell me of weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26797 /* ~"Actually, I may return later when I am ready for instruction. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #26668 /* ~"This one will speak of focus first: For teaching to take root, you must have focus. You must be committed to the path of the warrior. The warrior is your profession, no other."~ */
  IF ~~ THEN REPLY #26799 /* ~"Understood: I can only be the fighter class if I want to learn about weapons. What is the next angle of training?"~ */ JOURNAL #26803 /* ~Porphiron said there is a limit to how much a warrior can learn at first, based on the warrior's level in his craft. He urged me to return for more instruction when I attain more experience. ~ */ GOTO 37
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26800 /* ~"I am already familiar with these concepts. What can you tell me of weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26801 /* ~"Actually, I may return later when I am ready for instruction. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #26669 /* ~"This one will speak of experience second: True knowledge of combat comes only with experience. There is limit to how much weapon instruction one may absorb. When you reach new level in art of warrior: It may be you are ready for new instruction?" ~ */
  IF ~  Global("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26804 /* ~"Understood: There is a limit to how much I can learn at first, but this limit may increase when I reach a new level. What is the next angle of training?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26805 /* ~"Understood: There is a limit to how much I can learn at first, but this limit may increase when I reach a new level. What is the next angle of training?"~ */ GOTO 38
  IF ~  GlobalGT("Porphiron_Teach","GLOBAL",0)
~ THEN REPLY #26806 /* ~"I am already familiar with these concepts. What can you tell me of weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26807 /* ~"Actually, I may return later when I am ready for instruction. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #26670 /* ~"This one will speak of proficiency third: There is only so much one may learn about any weapon. This one would add: There is only so much that this one can teach. Knowledge of the weapon comes at three levels: The ignorant, the proficient, and the specialized. There are levels between each of these, in which the student has surpassed previous learning, but has not yet truly reached the plateau of the next skill."~ */
  IF ~~ THEN REPLY #26808 /* ~"What are these levels?"~ */ GOTO 39
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26809 /* ~"I understand the basics already. What can you teach me about the weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26810 /* ~"I've heard enough for now... I'll return later if I need instruction."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #26671 /* ~"This level of the ignorant is this: When one does not know the weapon they use. The attack is clumsy: The damage much less than its potential."~ */
  IF ~~ THEN REPLY #26811 /* ~"That sounds like me when I awoke on the Mortuary slab... go on. What is the level of the proficient?"~ */ GOTO 40
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26812 /* ~"I understand the basics already. What can you teach me about the weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26813 /* ~"I've heard enough for now... I'll return later if I need instruction."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #26672 /* ~"The level of the proficient is this: When one has learned a weapon, he is said to be *proficient* in its use. His attacks are no longer clumsy: They come swiftly and surely." ~ */
  IF ~~ THEN REPLY #26814 /* ~"And the level of the specialist?"~ */ DO ~SetGlobal("Porphiron_Teach","GLOBAL",2)
~ JOURNAL #26817 /* ~Porphiron said there are three levels of skill with any weapon.

There is the level of the ignorant, where the attacker uses the weapon at a disadvantage. His attacks are clumsy, unfocused, and do less damage than they would in the hands of a learned warrior. This is the level at which I began when I awoke in the Mortuary, it seems. I will need to train in order to become better with the weapons of this world.

Beyond the level of the ignorant is the level of the proficient, which occurs after the warrior has studied with a weapon. His attacks are no longer hampered by his ignorance of the weapon, and his attacks come more swiftly and surely.

Beyond the level of the learned is the level of the specialist. At this level, the attacker is not only skilled with the weapon, but he has made it an extension of his will. His attacks with the skilled weapon are faster, and the damage he inflicts greater.~ */ GOTO 41
  IF ~  Global("Porphiron_Teach","GLOBAL",2)
~ THEN REPLY #26815 /* ~"I understand the basics already. What can you teach me about the weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26816 /* ~"I've heard enough for now... I'll return later if I need instruction."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #26673 /* ~"The level of the specialist is this: When one goes beyond proficiency, he becomes *specialized* in use of the weapon. The weapon is no longer tool, but extension of will."~ */
  IF ~~ THEN REPLY #26818 /* ~"All right I understand. What can you teach me of weapons?"~ */ GOTO 42
  IF ~~ THEN REPLY #26819 /* ~"I've heard enough. I may return. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 3.5 34.1 35.1 36.1 37.2 38.1 39.1 40.1 41.0 43.2 44.2 45.2 46.2 47.2 49.0 50.0 53.0
  SAY #26674 /* ~"This one was trained in the hand, the blade, the stave, the hatchet, and the smiter: Of which would you know?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26820 /* ~"I wish to know about fists."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26821 /* ~"I wish to know about fists."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26822 /* ~"I wish to know about daggers."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26823 /* ~"I wish to know about daggers."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26824 /* ~"I wish to know about clubs."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26825 /* ~"I wish to know about clubs."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26826 /* ~"I wish to know about axes."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26827 /* ~"I wish to know about axes."~ */ GOTO 46
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26828 /* ~"I wish to know about hammers."~ */ GOTO 51
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26829 /* ~"I wish to know about hammers."~ */ GOTO 47
  IF ~~ THEN REPLY #26830 /* ~"Can you tell me more about the ways of the warrior again?"~ */ GOTO 35
  IF ~~ THEN REPLY #26831 /* ~"No instruction today. I may return when I wish to learn more."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #26675 /* ~"One who would use the fist: It strikes swiftly, the damage it does crushes the bones of an opponent. There will be weapons you may find: heavy gauntlets, punch daggers, or even the cestus. These do crushing, piercing or slashing damage. Your knowledge is limited: Do you wish to use a portion of your talent to attain the level of the proficient in this weapon?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,2)
~ THEN REPLY #26832 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26836 /* ~With Porphiron's help... and many bruises later... I have achieved the level of the proficient in fist-fighting.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,FIST,1)
~ THEN REPLY #26833 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #24443 /* ~Porphiron said he could teach me nothing more about fist-fighting. He said I would have to find a weapons master in order to become specialized in fist-fighting.~ */ GOTO 50
  IF ~~ THEN REPLY #26834 /* ~"No... what other weapons can you train me in?"~ */ GOTO 42
  IF ~~ THEN REPLY #26835 /* ~"No, I do not think I wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.3
  SAY #26676 /* ~"One who would use the dagger: It strikes swiftly. The damage it does is the slash of a claw or the piercing like a needle. The damage is determined by the type of dagger. Do you wish to use a portion of your talent to attain the level of the proficient in this weapon?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,2)
~ THEN REPLY #26837 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26841 /* ~With Porphiron's help... and many scars later... I have achieved the level of the proficient in the dagger. Once Porphiron found that I recovered quickly from cuts, he wasted no time using me as a cutting board.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,DAGGER,1)
~ THEN REPLY #26838 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26842 /* ~Porphiron said he could teach me nothing more about daggers. He said I would have to find a weapons master in order to become specialized in daggers.~ */ GOTO 50
  IF ~~ THEN REPLY #26839 /* ~"No... what other weapons can you train me in?"~ */ GOTO 42
  IF ~~ THEN REPLY #26840 /* ~"No, I do not think I wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #26677 /* ~"One who would use the club: Its speed is not that of the fist or dagger, but its damage is greater. It crushes the body of an opponent like a falling rock. Do you wish to use a portion of your talent to attain the level of the proficient in this weapon?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,2)
~ THEN REPLY #26843 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26850 /* ~With Porphiron's help... and many bruises later... I have achieved the level of the proficient in clubs.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,CLUB,1)
~ THEN REPLY #26847 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26851 /* ~Porphiron said he could teach me nothing more about clubs. He said I would have to find a weapons master in order to become specialized in clubs.~ */ GOTO 50
  IF ~~ THEN REPLY #26848 /* ~"No... what other weapons can you train me in?"~ */ GOTO 42
  IF ~~ THEN REPLY #26849 /* ~"No, I do not think I wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 42.7
  SAY #26678 /* ~"One who would use the axe: Its speed is not that of the club, but its damage is greater. It slashes like a great claw at the body of an opponent. Do you wish to use a portion of your talent to attain the level of the proficient in this weapon?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,2)
~ THEN REPLY #26852 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26856 /* ~With Porphiron's help... and many scars later... I have achieved the level of the proficient in the axe. Once Porphiron found that I recovered quickly from even the most vicious slashes, he wasted no time trying to turn me into firewood.~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,AXE,1)
~ THEN REPLY #26853 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26857 /* ~Porphiron said he could teach me nothing more about axes. He said I would have to find a weapons master in order to become specialized in axes.~ */ GOTO 50
  IF ~~ THEN REPLY #26854 /* ~"No... what other weapons can you train me in?"~ */ GOTO 42
  IF ~~ THEN REPLY #26855 /* ~"No, I do not think I wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.9
  SAY #26679 /* ~"One who would use the hammer: Its speed is not that of the club, but its damage is greater. The damage is like the falling of a great rock, crushing the body of an opponent. Do you wish to use a portion of your talent to attain the level of the proficient in this weapon?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,2)
~ THEN REPLY #26858 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #26862 /* ~With Porphiron's help... and many bruises later... I have achieved the level of the proficient in the hammer. I think it's going to take a while before the ringing in my head dies down~ */ GOTO 48
  IF ~  ProficiencyGT(Protagonist,HAMMER,1)
~ THEN REPLY #26859 /* ~"Yes, I wish to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #26863 /* ~Porphiron said he could teach me nothing more about hammers. He said I would have to find a weapons master in order to become specialized in hammers.~ */ GOTO 50
  IF ~~ THEN REPLY #26860 /* ~"No... what other weapons can you train me in?"~ */ GOTO 42
  IF ~~ THEN REPLY #26861 /* ~"No, I do not think I wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0 44.0 45.0 46.0 47.0
  SAY #26680 /* ~"This one will instruct you: First, stand like so -"~ */
  IF ~~ THEN REPLY #26864 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #26681 /* ~"This one compliments you: The knowledge comes to you swiftly. You take instruction well."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #26865 /* ~"Thank you. I would learn other weapons, if you would teach me."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #26866 /* ~"Thank you. I would learn other weapons, if you would teach me."~ */ GOTO 51
  IF ~~ THEN REPLY #26867 /* ~"Thank you. That is all I wished to know today."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 43.1 44.1 45.1 46.1 47.1
  SAY #26682 /* ~"This one can teach you no more: Do you know you have already achieved the level of the proficient in the use of such a weapon? This one can only instruct you in a final lesson: Find a master to learn more, if indeed it is possible for you to learn more. Remain devoted to the path of the warrior, and it shall not be long before you reach the limits of knowledge."~ */
  IF ~~ THEN REPLY #26868 /* ~"All right. What other weapons can you teach me?"~ */ GOTO 42
  IF ~~ THEN REPLY #26869 /* ~"I'll see if I can find one, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.2 42.0 42.2 42.4 42.6 42.8 49.1
  SAY #26683 /* ~"This one sees your mind is already filled to the limit with knowledge of weapons: Will you come to me again when you have attained a new level? Then this one will teach you of weapons."~ */
  IF ~~ THEN REPLY #26870 /* ~"If you cannot teach me anything more with weapons, can you tell me of the ways of the warrior?"~ */ JOURNAL #26872 /* ~Porphiron said he could teach me nothing more about weapons; that I had already reached the limit for weapon knowledge for my level. He said should return when I had achieved a new level in the Craft, and he might be able to teach me more.~ */ GOTO 35
  IF ~~ THEN REPLY #26871 /* ~"All right then. I will return when I have reached a new level in the Craft."~ */ JOURNAL #26872 /* ~Porphiron said he could teach me nothing more about weapons; that I had already reached the limit for weapon knowledge for my level. He said should return when I had achieved a new level in the Craft, and he might be able to teach me more.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 3.4
  SAY #26684 /* ~"This one can only instruct you in a final lesson: Find a master to learn more."~ */
  IF ~~ THEN REPLY #26873 /* ~"I'll see if I can find one, then. Farewell."~ */ JOURNAL #26875 /* ~Porphiron said he could teach me nothing more about weapons. He said I would have to find a weapons master in order to become specialized in a weapon.~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 3.3
  SAY #26685 /* ~"This one sees your mind is ready for more learning: what weapons would you wish to become proficient in?"~ */
  IF ~~ THEN REPLY #26876 /* ~"What ones can you teach me?"~ */ GOTO 42
  IF ~~ THEN REPLY #26877 /* ~"None today, thanks. Maybe later."~ */ EXIT
END
