// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCASSIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCASSIUS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50718 /* ~You see a grossly corpulent man, with folds of fat oozing every which way. His eye slowly turns toward you, and when it lands on you, you are suddenly hit with a feeling of unspeakable danger. "I hold the true essence of the sword. What you see there is a shallow shell. The blade is in me. You must defeat me to reach it."~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #50719 /* ~"Who are you?"~ */ GOTO 1
  IF ~  Global("Trias_Sword","GLOBAL",1)
HasItem("Bandage",Myself)
~ THEN REPLY #59402 /* ~"I've come for the sword."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59407 /* ~"Yes. I've already stolen your bandages from you; do you think you could keep me from stealing the blade if I put my mind to it?"~ */ GOTO 19
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Forget it. Farewell."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #67172 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 7.0
  SAY #59635 /* ~His deep voice rolls out from the layers of fat. "My name is Cassius. I was the greatest weapon of a dead Abyssal Lord, and his heirs seek me yet. I am a dread secret in the heart of the chaotic planes, and I am the guard of this blade."~ */
  IF ~~ THEN REPLY #59670 /* ~"You were a *weapon?*"~ */ GOTO 3
  IF ~~ THEN REPLY #59671 /* ~"You don't look that dangerous..."~ */ GOTO 3
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59673 /* ~"I've come for the sword."~ */ GOTO 2
  IF ~~ THEN REPLY #59674 /* ~"I see. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.3 1.2 1.3 3.1 3.2 4.0 4.2 5.0 5.2 6.0 6.1 7.1
  SAY #59637 /* ~His voice is cavernously deep. "This sword powers the Prison of Curst. Its removal shall free all the prisoners condemned to be forgotten. I am charged to prevent this from happening. Do you wish the blade?"~ */
  IF ~~ THEN REPLY #59705 /* ~"Yes."~ */ GOTO 9
  IF ~~ THEN REPLY #59706 /* ~"No."~ */ GOTO 8
  IF ~~ THEN REPLY #59707 /* ~"I really just wanted to leave."~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1
  SAY #59639 /* ~"I was once the most effective weapon in all the Abyss, shaped to my master's will. I could take the form of any creature's doom. I have slain more foes of my dead lord than most have moments in their lives. My brother, my pale shadow, my Xekiel, slays still in the depths of the Abyss."~ */
  IF ~~ THEN REPLY #59710 /* ~"Why did you leave?"~ */ GOTO 4
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59711 /* ~"Right. Well, I've come for the sword."~ */ GOTO 2
  IF ~~ THEN REPLY #59712 /* ~"All right. I was just leaving."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #59641 /* ~"My master sank into the heart of the Abyss while I was out a-slaying. When I returned from the assassination, he was gone and his heirs came baying to claim me. None of them could tame me, and so I left. This duty is pleasant. Those who come - I slay. It is not an onerous task."~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59715 /* ~"I have come for the blade."~ */ GOTO 2
  IF ~~ THEN REPLY #59717 /* ~"Could you slay me?"~ */ GOTO 5
  IF ~~ THEN REPLY #59719 /* ~"I see. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #59643 /* ~He studies you carefully. After a moment, he announces, "I could, though it would be a dear fight. Do you wish me to slay you?"~ */
  IF ~  Global("Trias_Sword","GLOBAL",1)
~ THEN REPLY #59722 /* ~"I've really just come for the blade."~ */ GOTO 2
  IF ~~ THEN REPLY #59724 /* ~"I'd like you to try."~ */ GOTO 6
  IF ~~ THEN REPLY #59726 /* ~"No. Actually, I'm leaving."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #59644 /* ~"Tell me that you have come for the blade, and I shall destroy you."~ */
  IF ~~ THEN REPLY #59729 /* ~"I've come for the blade."~ */ GOTO 2
  IF ~~ THEN REPLY #59730 /* ~"Forget it. I'm leaving."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #59645 /* ~Cassius' voice lolls out from the depths of his fat chest. "Do you seek the blade?"~ */
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59733 /* ~"Tell me of yourself, first."~ */ GOTO 1
  IF ~  HasItem("Bandage",Myself)
~ THEN REPLY #59734 /* ~"Yes."~ */ GOTO 2
  IF ~  !HasItem("Bandage",Myself)
~ THEN REPLY #59735 /* ~"Yes. I've already stolen your bandages from you; do you think you could keep me from stealing the blade if I put my mind to it?"~ */ GOTO 19
  IF ~~ THEN REPLY #12012 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1 2.2 9.3 10.3 11.3 12.3
  SAY #59646 /* ~"Should you desire the true essence of the blade, you must return to me, and we shall duel for it. One way or another, we shall duel."~ */
  IF ~~ THEN REPLY #59736 /* ~"Very well. Farewell."~ */ JOURNAL #59745 /* ~A disgustingly fat man challenged me for the blade in the center of the prison. He said he had the essence of it in him, and should I desire it, I would have to confront him.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #59648 /* ~"Then these are the rules. You must choose between three options: Strength, wits, or speed. Should you fail at any of these, I shall destroy you."~ */
  IF ~~ THEN REPLY #59746 /* ~"I choose strength."~ */ GOTO 10
  IF ~~ THEN REPLY #59747 /* ~"I choose wits."~ */ GOTO 11
  IF ~~ THEN REPLY #59748 /* ~"I choose speed."~ */ GOTO 12
  IF ~~ THEN REPLY #59749 /* ~"Forget it. I'll come back later."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1 12.1
  SAY #59649 /* ~"Then we shall struggle. Should you win, you may have the blade from my corpse. Should you lose, I shall feast on your bones."~ */
  IF ~~ THEN REPLY #59751 /* ~"Very well."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ JOURNAL #59737 /* ~I have decided on a test of strength for the blade. Cassius is strong, and he threatens to feast on my bones should I fall to him.~ */ EXIT
  IF ~~ THEN REPLY #59752 /* ~"In that case, I choose wits."~ */ GOTO 11
  IF ~~ THEN REPLY #59753 /* ~"In that case, I choose speed."~ */ GOTO 12
  IF ~~ THEN REPLY #59754 /* ~"In that case, forget it."~ */ GOTO 8
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 12.2
  SAY #59651 /* ~"Then I shall ask you three riddles. Should you fail, I will destroy you and fashion pipes from your skull, and play a song of torment on your spirit for eternity."~ */
  IF ~~ THEN REPLY #59757 /* ~"Very well. Ask your riddles."~ */ JOURNAL #59738 /* ~I am beginning a test of wits with Cassius, a series of three riddles. Should I succeed, I gain the blade. Should I fail, he threatens to make an instrument of my skeleton and spirit. ~ */ GOTO 14
  IF ~~ THEN REPLY #59761 /* ~"In that case, I choose strength."~ */ GOTO 10
  IF ~~ THEN REPLY #59762 /* ~"In that case, I choose speed."~ */ GOTO 12
  IF ~~ THEN REPLY #59764 /* ~"In that case, forget it."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 9.2 10.2 11.2
  SAY #59653 /* ~"Then you must steal a roll of bandages from its hiding place on my body. Should you succeed, speak to me again and I shall produce the blade from its hiding place. Fail, and the fires of the Pit shall seem kind compared to the agonies I inflict upon you. Do you wish to begin?"~ */
  IF ~~ THEN REPLY #59765 /* ~"Very well."~ */ JOURNAL #59739 /* ~I am beginning a test of speed with Cassius, guardian of the sword. If I can snatch a roll of bandages from his obese body, then I need to speak to him again, and he will give me the blade. If I fail, he threatens me with destruction. ~ */ GOTO 13
  IF ~~ THEN REPLY #59766 /* ~"In that case, I choose strength."~ */ GOTO 10
  IF ~~ THEN REPLY #59767 /* ~"In that case, I choose wits."~ */ GOTO 11
  IF ~~ THEN REPLY #59768 /* ~"In that case, forget it."~ */ GOTO 8
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #59655 /* ~"Then remove it. Else, I shall assume you seek the blade another way."~ */
  IF ~~ THEN REPLY #59769 /* ~"Fine. We'll see about this."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #59657 /* ~"We begin with a classic riddle: What walks on four legs at dawn, two legs at noon, and three at dusk?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #59770 /* ~You know the answer: "A human, who crawls on all fours at birth, walks on two legs during youth, and leans on a cane during old age."~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #59771 /* ~"A man?"~ */ GOTO 16
  IF ~~ THEN REPLY #59772 /* ~"A wounded dung beetle?"~ */ GOTO 15
  IF ~~ THEN REPLY #59773 /* ~"A bear?"~ */ GOTO 15
  IF ~~ THEN REPLY #59774 /* ~"A shape changing tanar'ri?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3 14.4 16.1 16.2 16.4 17.2 17.3 17.4
  SAY #59659 /* ~"That is incorrect. You shall perish in exquisite agony."~ */
  IF ~~ THEN REPLY #59775 /* ~"Wait!"~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59776 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0 14.1
  SAY #59661 /* ~"That is correct. For the second riddle: I groan, but words never escape my lips. I may be empty, but never am I full. What am I?"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #59777 /* ~You know the answer: "Are you hunger?"~ */ GOTO 17
  IF ~~ THEN REPLY #59778 /* ~"A ghost?"~ */ GOTO 15
  IF ~~ THEN REPLY #59779 /* ~"A prisoner with no tongue?"~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #59780 /* ~"Hunger?"~ */ GOTO 17
  IF ~~ THEN REPLY #59781 /* ~"The moon?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.3
  SAY #59662 /* ~"Yes. The third riddle is this: What flies, and cannot stand still? What devours all it touches, yet eats nothing? What can never be lent, yet is always wasted? What is always spent, yet never earned?"~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #59782 /* ~You know the answer: "The answer is time."~ */ JOURNAL #59740 /* ~I defeated Cassius, guardian of the blade in the prison of Curst, in a duel of wits. His questions were remarkably easy.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #59783 /* ~"Is it time?"~ */ JOURNAL #59740 /* ~I defeated Cassius, guardian of the blade in the prison of Curst, in a duel of wits. His questions were remarkably easy.~ */ GOTO 18
  IF ~~ THEN REPLY #59784 /* ~"Is it fire?"~ */ GOTO 15
  IF ~~ THEN REPLY #59785 /* ~"Is it power?"~ */ GOTO 15
  IF ~~ THEN REPLY #59786 /* ~"Is it magic?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #59663 /* ~"You have bested me. Your appearance led me to believe that your wits were a match for your scarred exterior. I have failed in my duty, and I yield the blade to you. I must depart this place."~ */
  IF ~~ THEN REPLY #59787 /* ~"Thanks."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 0.2 7.2
  SAY #59665 /* ~"Your appearance belies your skill. You are truly too cunning a thief for me to stop your efforts. This is the key. I must depart this place to hide my shame."~ */
  IF ~~ THEN REPLY #59788 /* ~"Farewell, then."~ */ DO ~SetGlobal("Cassius","GLOBAL",10)
AddexperienceParty(5000)
GiveItemCreate("Celestia",Protagonist,1,0,0)
StickySinisterPoof("S113SMOK",Myself,1)
DestroySelf()
~ JOURNAL #59741 /* ~I defeated Cassius, guardian of the blade in the prison of Curst, in a duel of speed. He was remarkably slow. ~ */ EXIT
END
